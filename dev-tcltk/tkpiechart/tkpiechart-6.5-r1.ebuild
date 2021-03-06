# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-tcltk/cvs-repo/gentoo-x86/dev-tcltk/tkpiechart/tkpiechart-6.5-r1.ebuild,v 1.3 2011/05/23 07:14:35 tomka Exp $

inherit multilib

DESCRIPTION="create and update 2D or 3D pie charts in a Tcl/Tk application"
HOMEPAGE="http://jfontain.free.fr/piechart6.htm"
SRC_URI="http://jfontain.free.fr/${P}.tar.bz2"

LICENSE="as-is"
KEYWORDS="amd64 ~ppc x86"
SLOT="0"
IUSE=""

DEPEND=">=dev-lang/tk-8.3
	dev-tcltk/tcllib"

src_install() {
	dodir /usr/$(get_libdir)/tkpiechart
	./instapkg.tcl "${D}"/usr/$(get_libdir)/tkpiechart || die

	dodoc CHANGES CONTENTS README TODO || die
	dohtml *.gif *.htm || die
	docinto demo
	dodoc demo* || die
}
