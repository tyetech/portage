# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-emacs/cvs-repo/gentoo-x86/app-emacs/emacs-wget/Attic/emacs-wget-0.4.2.ebuild,v 1.3 2004/06/24 22:10:24 agriffis Exp $

inherit elisp

IUSE=""

DESCRIPTION="Wget interface for Emacs"
HOMEPAGE="http://pop-club.hp.infoseek.co.jp/emacs/emacs-wget/"
SRC_URI="http://pop-club.hp.infoseek.co.jp/emacs/emacs-wget/${P}.tar.gz"

DEPEND="virtual/emacs"
RDEPEND="${DEPEND}
	>=net-misc/wget-1.8.2"

SLOT="0"
LICENSE="GPL-2"
KEYWORDS="~x86 ~ppc"

src_compile(){

	elisp-comp *.el || die
}

src_install(){

	elisp-install ${PN} *.el{,c} || die
	elisp-site-file-install ${FILESDIR}/65emacs-wget-gentoo.el || die

	dodoc ChangeLog README* USAGE*
}
