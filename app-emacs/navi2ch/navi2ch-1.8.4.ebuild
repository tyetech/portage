# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-emacs/cvs-repo/gentoo-x86/app-emacs/navi2ch/navi2ch-1.8.4.ebuild,v 1.6 2012/03/08 21:25:57 ranger Exp $

EAPI=3

inherit elisp

DESCRIPTION="A navigator for 2ch"
HOMEPAGE="http://navi2ch.sourceforge.net/"
SRC_URI="mirror://sourceforge/navi2ch/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 ppc ppc64 x86 ~amd64-linux ~x86-linux ~ppc-macos"
IUSE=""

SITEFILE="50${PN}-gentoo.el"

src_configure() {
	econf \
		--with-lispdir="${EPREFIX}${SITELISP}/${PN}" \
		--with-icondir="${EPREFIX}${SITEETC}/${PN}"
}

# This is NOT redundant, elisp.eclass redefines src_compile
src_compile() {
	emake || die "emake failed"
}

src_install() {
	emake DESTDIR="${D}" install || die "emake install failed"
	elisp-install ${PN} contrib/*.el || die
	elisp-site-file-install "${FILESDIR}/${SITEFILE}" || die
	dodoc ChangeLog* NEWS README TODO || die
	newdoc contrib/README README.contrib || die
}

pkg_postinst() {
	elisp-site-regen
	elog
	elog "Please add to your ~/.emacs"
	elog "If you use mona-font,"
	elog "\t(setq navi2ch-mona-enable t)"
	elog "If you use izonmoji-mode,"
	elog "\t(require 'izonmoji-mode)"
	elog "\t(add-hook 'navi2ch-bm-mode-hook	  'izonmoji-mode-on)"
	elog "\t(add-hook 'navi2ch-article-mode-hook 'izonmoji-mode-on)"
	elog "\t(add-hook 'navi2ch-popup-article-mode-hook 'izonmoji-mode-on)"
	elog
}
