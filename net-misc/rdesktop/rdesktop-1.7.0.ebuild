# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-misc/cvs-repo/gentoo-x86/net-misc/rdesktop/rdesktop-1.7.0.ebuild,v 1.10 2012/05/05 03:20:43 jdhore Exp $

EAPI=2

inherit autotools eutils

MY_PV=${PV/_/-}

DESCRIPTION="A Remote Desktop Protocol Client"
HOMEPAGE="http://rdesktop.sourceforge.net/"
SRC_URI="mirror://sourceforge/${PN}/${PN}-${MY_PV}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="alpha amd64 hppa ia64 ~mips ppc ppc64 sparc x86 ~x86-fbsd"
IUSE="alsa ao debug ipv6 libsamplerate oss pcsc-lite"

S=${WORKDIR}/${PN}-${MY_PV}

RDEPEND=">=dev-libs/openssl-0.9.6b
	x11-libs/libX11
	x11-libs/libXext
	x11-libs/libXau
	x11-libs/libXdmcp
	alsa? ( media-libs/alsa-lib )
	ao? ( >=media-libs/libao-0.8.6 )
	libsamplerate? ( media-libs/libsamplerate )
	pcsc-lite? ( >=sys-apps/pcsc-lite-1.6.6 )"
DEPEND="${RDEPEND}
	virtual/pkgconfig
	x11-libs/libXt"

src_prepare() {
	# Prevent automatic stripping
	local strip="$(echo '$(STRIP) $(DESTDIR)$(bindir)/rdesktop')"
	sed -i -e "s:${strip}::" Makefile.in \
		|| die "sed failed in Makefile.in"

	# Automagic dependency on libsamplerate
	epatch "${FILESDIR}"/${PN}-1.6.0-sound_configure.patch
	# Fix --enable-smartcard logic
	epatch "${FILESDIR}"/${PN}-1.6.0-smartcard_configure.patch
	# bug #349813
	epatch "${FILESDIR}"/${P}+pcsc-lite-1.6.6.patch

	eautoreconf
}

src_configure() {
	if use ao; then
		sound_conf=$(use_with ao sound libao)
	else if use alsa; then
			sound_conf=$(use_with alsa sound alsa)
		else
			sound_conf=$(use_with oss sound oss)
		fi
	fi

	econf \
		--with-openssl=/usr \
		$(use_with debug) \
		$(use_with ipv6) \
		$(use_with libsamplerate) \
		$(use_enable pcsc-lite smartcard) \
		${sound_conf} \
		|| die "configuration failed"
}

src_install() {
	emake DESTDIR="${D}" install || die "installation failed"
	dodoc doc/HACKING doc/TODO doc/keymapping.txt

	# For #180313 - applies to versions >= 1.5.0
	# Fixes sf.net bug
	# http://sourceforge.net/tracker/index.php?func=detail&aid=1725634&group_id=24366&atid=381349
	# check for next version to see if this needs to be removed
	insinto /usr/share/rdesktop/keymaps
	newins "${FILESDIR}/rdesktop-keymap-additional" additional
	newins "${FILESDIR}/rdesktop-keymap-cs" cs
	newins "${FILESDIR}/rdesktop-keymap-sk" sk
}
