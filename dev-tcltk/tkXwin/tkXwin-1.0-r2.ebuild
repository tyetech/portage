# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-tcltk/cvs-repo/gentoo-x86/dev-tcltk/tkXwin/tkXwin-1.0-r2.ebuild,v 1.7 2012/10/14 11:28:52 jlec Exp $

EAPI="3"

inherit eutils multilib toolchain-funcs

DESCRIPTION="Tcl/Tk library to detect idle periods of an X session"
HOMEPAGE="http://beepcore-tcl.sourceforge.net/"
SRC_URI="http://beepcore-tcl.sourceforge.net/${P}.tgz"

LICENSE="BSD"
SLOT="0"
IUSE="debug static-libs threads"
KEYWORDS="~alpha amd64 ~ppc ~sparc x86"

DEPEND="
	dev-lang/tk[threads?]
x11-libs/libXScrnSaver
	x11-libs/libX11
	x11-libs/libXext
	x11-proto/scrnsaverproto
	x11-proto/xextproto"
RDEPEND="${DEPEND}"

src_prepare() {
	epatch \
		"${FILESDIR}"/${PV}-Makefile.in.diff \
		"${FILESDIR}"/${PV}-configure.patch
	tc-export CC
}

src_configure() {
	econf \
		--with-tcl=/usr/$(get_libdir) \
		--with-tk=/usr/$(get_libdir) \
		--enable-gcc \
		--with-x \
		--enable-shared \
		$(use_enable static-libs static) \
		$(use_enable threads) \
		$(use_enable debug symbols)
}

src_install() {
	emake DESTDIR="${D}" install || die
	dodoc AUTHORS INSTALL README || die
	use static-libs || rm -f "${ED}"/usr/$(get_libdir)/*.la
}
