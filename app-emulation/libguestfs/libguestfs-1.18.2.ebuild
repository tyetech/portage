# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-emulation/cvs-repo/gentoo-x86/app-emulation/libguestfs/libguestfs-1.18.2.ebuild,v 1.2 2012/10/09 21:17:16 cardoe Exp $

EAPI="4"

APLANCE_PV="1.18.2"
APPL_P="appliance-${APLANCE_PV}"

AUTOTOOLS_AUTORECONF=1
AUTOTOOLS_IN_SOURCE_BUILD=1

inherit check-reqs bash-completion-r1 autotools-utils versionator eutils \
multilib linux-info perl-module

MY_PV_1="$(get_version_component_range 1-2)"
MY_PV_2="$(get_version_component_range 2)"

[[ $(( $(get_version_component_range 2) % 2 )) -eq 0 ]] && SD="stable" || SD="development"

DESCRIPTION="Tools for accessing, inspect  and modifying virtual machine (VM) disk images"
HOMEPAGE="http://libguestfs.org/"
SRC_URI="http://libguestfs.org/download/${MY_PV_1}-${SD}/${P}.tar.gz
	http://dev.gentoo.org/~maksbotan/${APPL_P}.tar.xz"

LICENSE="GPL-2 LGPL-2"
SLOT="0"
# Upstream NOT supported 32-bit version, keyword in own risk
KEYWORDS="~amd64"
IUSE="bash-completion erlang +fuse debug ocaml doc +perl nls ruby static-libs selinux systemtap introspection"

# Failires - doc

COMMON_DEPEND="
	>=app-misc/hivex-1.3.1
	dev-libs/libpcre
	app-arch/cpio
	dev-lang/perl
	app-cdr/cdrkit
	>=app-emulation/qemu-1.0[qemu_user_targets_x86_64,qemu_softmmu_targets_x86_64]
	sys-apps/fakeroot
	sys-apps/file
	app-emulation/libvirt
	dev-libs/libxml2:2
	>=sys-apps/fakechroot-2.8
	>=app-admin/augeas-0.7.1
	sys-fs/squashfs-tools
	dev-libs/libconfig
	dev-libs/libpcre
	sys-libs/readline
	>=sys-libs/db-4.6
	perl? ( virtual/perl-ExtUtils-MakeMaker
			>=dev-perl/Sys-Virt-0.2.4
			virtual/perl-Getopt-Long
			virtual/perl-Data-Dumper
			dev-perl/libintl-perl
			>=app-misc/hivex-1.3.1[perl?]
			dev-perl/String-ShellQuote
			)
	fuse? ( sys-fs/fuse )
	introspection? (
		>=dev-libs/gobject-introspection-1.30.0
		dev-libs/gjs
		)
	selinux? ( sys-libs/libselinux  sys-libs/libsemanage )
	systemtap? ( dev-util/systemtap )
	ocaml? ( dev-lang/ocaml[ocamlopt] dev-ml/findlib[ocamlopt] )
	erlang? ( dev-lang/erlang )
	"

DEPEND="${COMMON_DEPEND}
	dev-util/gperf
	doc? ( app-text/po4a )
	ruby? ( dev-lang/ruby virtual/rubygems dev-ruby/rake )
	"
RDEPEND="${COMMON_DEPEND}"

PATCHES=("${FILESDIR}"/1.17/0002-configure_ac_automagic.patch  )

DOCS=(AUTHORS BUGS HACKING README RELEASE-NOTES ROADMAP TODO)

pkg_pretend() {
	CHECKREQS_DISK_BUILD="5G"
	CHECKREQS_DISK_USR="5G"
	check-reqs_pkg_pretend
}

pkg_setup () {
		CONFIG_CHECK="~KVM ~VIRTIO"
		[ -n "${CONFIG_CHECK}" ] && check_extra_config;
}

src_prepare() {
	autotools-utils_src_prepare
}

src_configure() {

	# Disable feature test for kvm for more reason
	# i.e: not loaded module in __build__ time,
	# build server not supported kvm, etc. ...
	#
	# In fact, this feature is virtio support and requires
	# configured kernel.
	export vmchannel_test=no

	local myeconfargs=(
		--disable-appliance
		--disable-daemon
		--with-drive-if=virtio
		--with-net-if=virtio-net-pci
		--with-extra="-gentoo"
		--with-readline
		--disable-php
		--disable-python
		--disable-java
		$(use_enable nls)
		$(use_enable perl)
		$(use_enable fuse)
		$(use_enable ocaml)
		$(use_enable ruby)
		--disable-haskell
		$(use_enable doc)
		$(use_enable introspection gobject)
		$(use_enable erlang)
	)
	autotools-utils_src_configure
}

src_compile() {
	autotools-utils_src_compile

}

src_test() {
	autotools-utils_src_test
}

src_install() {
	strip-linguas -i po
	autotools-utils_src_install "LINGUAS=""${LINGUAS}"""

	use bash-completion && dobashcomp "${D}/etc"/bash_completion.d/guestfish-bash-completion.sh

	rm -fr "${D}/etc"/bash* || die

	insinto /usr/share/guestfs/
	doins -r "${WORKDIR}"/appliance
	newenvd "${FILESDIR}"/env.file 99"${PN}"

	use perl && fixlocalpod
}
