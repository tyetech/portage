# Copyright 2003 Arcady Genkin <agenkin@gentoo.org>.
# Distributed under the terms of the GNU General Public License v2.
# $Header: /usr/local/ssd/gentoo-x86/output/dev-tcltk/cvs-repo/gentoo-x86/dev-tcltk/Tk_Theme/Attic/Tk_Theme-23.ebuild,v 1.3 2003/07/12 13:10:41 aliz Exp $

DESCRIPTION="Theming library for TCL/TK."
HOMEPAGE="http://www.xmission.com/~georgeps/Tk_Theme/"
IUSE=""

DEPEND="dev-lang/tcl
	dev-lang/tk
	x11-base/xfree"

LICENSE="BSD"
KEYWORDS="x86"

SLOT="0"
SRC_URI="http://www.xmission.com/~georgeps/Tk_Theme/${P}.tgz"
S=${WORKDIR}/${P}

src_compile() {

	tclsh configure || die
	make || die

}

src_install() {

	local libdir=/usr/lib/Tk_Theme
	
	insinto ${libdir}
	doins *.tcl
	exeinto ${libdir}
	doexe theme.so

	dodoc Changes LICENSE README TODO

}
