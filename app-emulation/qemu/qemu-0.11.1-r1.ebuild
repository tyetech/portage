# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-emulation/cvs-repo/gentoo-x86/app-emulation/qemu/qemu-0.11.1-r1.ebuild,v 1.4 2012/05/03 18:49:05 jdhore Exp $

EAPI="2"

inherit eutils flag-o-matic toolchain-funcs linux-info

DESCRIPTION="QEMU emulator and ABI wrapper"
HOMEPAGE="http://www.qemu.org"
SRC_URI="http://download.savannah.gnu.org/releases/qemu/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~ppc64 ~x86"
IUSE="alsa bluetooth gnutls ncurses pulseaudio sasl +sdl vde kqemu kvm"

COMMON_TARGETS="i386 x86_64 arm cris m68k mips mipsel mips64 mips64el ppc ppc64 sh4 sh4eb sparc"

IUSE_SOFTMMU_TARGETS="${COMMON_TARGETS} ppcemb"
IUSE_USER_TARGETS="${COMMON_TARGETS} alpha armeb ppc64abi32 sparc64 sparc32plus"

for target in ${IUSE_SOFTMMU_TARGETS}; do
	IUSE="${IUSE} +qemu_softmmu_targets_${target}"
done

for target in ${IUSE_USER_TARGETS}; do
	IUSE="${IUSE} +qemu_user_targets_${target}"
done

RDEPEND="
	!app-emulation/qemu-user
	sys-libs/zlib
	alsa? ( >=media-libs/alsa-lib-1.0.13 )
	pulseaudio? ( media-sound/pulseaudio )
	gnutls? ( net-libs/gnutls )
	ncurses? ( sys-libs/ncurses )
	sasl? ( dev-libs/cyrus-sasl )
	sdl? ( >=media-libs/libsdl-1.2.11 )
	vde? ( net-misc/vde )
	kvm? ( >=sys-kernel/linux-headers-2.6.29 )
	bluetooth? ( net-wireless/bluez )
	kqemu? ( >=app-emulation/kqemu-1.4.0_pre1 )"
#	fdt? ( sys-apps/dtc )

DEPEND="${RDEPEND}
		gnutls? ( virtual/pkgconfig )
		app-text/texi2html"

src_prepare() {
	# avoid fdt till an updated release appears
	sed -i -e 's:fdt="yes":fdt="no":' configure
	# prevent docs to get automatically installed
	sed -i '/$(DESTDIR)$(docdir)/d' Makefile
	# Alter target makefiles to accept CFLAGS set via flag-o
	sed -i 's/^\(C\|OP_C\|HELPER_C\)FLAGS=/\1FLAGS+=/' \
		Makefile Makefile.target tests/Makefile
	[[ -x /sbin/paxctl ]] && \
		sed -i 's/^VL_LDFLAGS=$/VL_LDFLAGS=-Wl,-z,execheap/' \
			Makefile.target
	# Append CFLAGS while linking
	sed -i 's/$(LDFLAGS)/$(QEMU_CFLAGS) $(CFLAGS) $(LDFLAGS)/' rules.mak
	epatch "${FILESDIR}/qemu-0.11.0-mips64-user-fix.patch"
	epatch "${FILESDIR}/qemu-0.11.1-CVE-2012-0029-backport.patch"
	epatch "${FILESDIR}"/${P}-cfg-pulse.patch #384847
}

src_configure() {
	local mycc conf_opts audio_opts softmmu_targets user_targets target_list

	for target in ${IUSE_SOFTMMU_TARGETS} ; do
		use "qemu_softmmu_targets_${target}" && \
			softmmu_targets="${softmmu_targets} ${target}-softmmu"
	done

	for target in ${IUSE_USER_TARGETS} ; do
		use "qemu_user_targets_${target}" && \
			user_targets="${user_targets} ${target}-linux-user"
	done

	conf_opts="--disable-darwin-user --disable-bsd-user --disable-strip"

	if test ! -z "${softmmu_targets}" ; then
		einfo "Building following softmmu targets: ${softmmu_targets}"
		use gnutls || conf_opts="$conf_opts --disable-vnc-tls"
		use ncurses || conf_opts="$conf_opts --disable-curses"
		use sasl || conf_opts="$conf_opts --disable-vnc-sasl"
		use sdl || conf_opts="$conf_opts --disable-sdl"
		use vde || conf_opts="$conf_opts --disable-vde"
		use bluetooth || conf_opts="$conf_opts --disable-bluez"
		use kqemu || conf_opts="$conf_opts --disable-kqemu"
		use kvm || conf_opts="$conf_opts --disable-kvm"

		audio_opts="oss"
		use alsa && audio_opts="alsa $audio_opts"
		use pulseaudio && audio_opts="pa $audio_opts"
		use sdl && audio_opts="sdl $audio_opts"
	else
		einfo "Disabling softmmu emulation (no softmmu targets specified)"
		conf_opts="$conf_opts --disable-system --disable-vnc-tls \
		--disable-curses --disable-sdl --disable-vde \
		--disable-kqemu --disable-kvm"
	fi

	if test ! -z "${user_targets}" ; then
		einfo "Building following user targets: ${user_targets}"
		conf_opts="$conf_opts --enable-linux-user"
	else
		einfo "Disabling usermode emulation (no usermode targets specified)"
		conf_opts="$conf_opts --disable-linux-user"
	fi

#	use fdt || conf_opts="$conf_opts --disable-fdt"

	conf_opts="$conf_opts --prefix=/usr"

	target_list="${softmmu_targets} ${user_targets}"

	filter-flags -fPIE

	./configure ${conf_opts} \
		--audio-drv-list="$audio_opts" \
		--cc="$(tc-getCC)" --host-cc="$(tc-getCC)" \
		--target-list="${target_list}" \
		|| die "configure failed"
}

src_install() {
	emake DESTDIR="${D}" install || die "make install failed"

	exeinto /etc/qemu
	doexe \
		"${FILESDIR}/qemu-ifup" \
		"${FILESDIR}/qemu-ifdown" \
		|| die "qemu interface scripts failed"

	dodoc Changelog MAINTAINERS TODO pci-ids.txt || die
	newdoc pc-bios/README README.pc-bios || die
	dohtml qemu-doc.html qemu-tech.html || die
}

pkg_postinst() {
	elog "You will need the Universal TUN/TAP driver compiled into your"
	elog "kernel or loaded as a module to use the virtual network device"
	elog "if using -net tap.  You will also need support for 802.1d"
	elog "Ethernet Bridging and a configured bridge if using the provided"
	elog "qemu-ifup script from /etc/qemu."
	echo
}
