# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-emacs/cvs-repo/gentoo-x86/app-emacs/ebuild-mode/Attic/ebuild-mode-1.5-r3.ebuild,v 1.1 2007/06/21 05:16:34 ulm Exp $

inherit elisp eutils

DESCRIPTION="An Emacs mode for editing Portage .ebuild, .eclass and .eselect files"
HOMEPAGE="http://www.gentoo.org/proj/en/lisp/emacs/"
SRC_URI="mirror://gentoo/${P}.tar.bz2"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc-fbsd ~x86 ~x86-fbsd"
IUSE=""

SITEFILE=50${PN}-gentoo.el

src_unpack() {
	unpack ${A}
	cd "${S}"
	epatch "${FILESDIR}/${P}-fix-tabify.patch"
}
