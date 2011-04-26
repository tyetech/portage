# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-wm/cvs-repo/gentoo-x86/x11-wm/cwm/Attic/cwm-20110213.ebuild,v 1.4 2011/04/26 11:15:08 tomka Exp $

EAPI=2

inherit eutils toolchain-funcs

DESCRIPTION="OpenBSD fork of calmwm, a clean and lightweight window manager"
HOMEPAGE="http://www.openbsd.org/cgi-bin/cvsweb/xenocara/app/cwm/
	https://github.com/chneukirchen/cwm.git"
SRC_URI="mirror://gentoo/${P}.tar.bz2"

LICENSE="ISC"
SLOT="0"
KEYWORDS="amd64 arm sparc x86"
IUSE=""

RDEPEND="x11-libs/libXft
	x11-libs/libXinerama
	x11-libs/libXrandr"
DEPEND="${RDEPEND}
	dev-util/pkgconfig
	sys-devel/bison"

src_prepare() {
	epatch "${FILESDIR}"/${P}-Makefile.patch
}

src_compile() {
	export LDADD="${LDFLAGS}"
	tc-export CC
	emake || die
}

src_install() {
	emake DESTDIR="${D}" install || die
}
