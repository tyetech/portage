# Copyright 1999-2004 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-emacs/cvs-repo/gentoo-x86/app-emacs/dictionary/Attic/dictionary-1.8.5.ebuild,v 1.2 2004/06/01 14:09:04 vapier Exp $

inherit elisp

IUSE=""

DESCRIPTION="Emacs package for talking to a dictionary server"
HOMEPAGE="http://www.myrkr.in-berlin.de/dictionary/index.html"
SRC_URI="http://www.myrkr.in-berlin.de/dictionary/${P}.tar.gz"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="x86"

SITEFILE="50${PN}-gentoo.el"

src_compile() {
	make EMACS=emacs || die
}

src_install() {
	elisp_src_install
	dodoc README
	einfo "Documentation for ${P} can be found at http://www.myrkr.in-berlin.de/dictionary/using.html"
}
