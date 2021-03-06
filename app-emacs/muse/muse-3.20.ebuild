# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-emacs/cvs-repo/gentoo-x86/app-emacs/muse/muse-3.20.ebuild,v 1.9 2012/07/14 16:01:17 ulm Exp $

EAPI=4

inherit elisp

DESCRIPTION="Muse-mode is similar to EmacsWikiMode, but more focused on publishing to various formats"
HOMEPAGE="http://mwolson.org/projects/EmacsMuse.html"
SRC_URI="http://download.gna.org/muse-el/${P}.tar.gz"

LICENSE="GPL-3 FDL-1.2 GPL-2 MIT"
SLOT="0"
KEYWORDS="amd64 ppc sparc x86 ~x86-fbsd"
IUSE="test"
RESTRICT="test"					#426546

DEPEND="test? ( app-emacs/htmlize )"
RDEPEND=""

SITEFILE="50${PN}-gentoo.el"

src_compile() {
	default
}

src_install() {
	elisp-install ${PN} lisp/*.el lisp/*.elc || die
	elisp-site-file-install "${FILESDIR}/${SITEFILE}" || die
	doinfo texi/muse.info
	dodoc AUTHORS NEWS README ChangeLog*
	insinto /usr/share/doc/${PF}
	doins -r contrib etc examples experimental scripts
}
