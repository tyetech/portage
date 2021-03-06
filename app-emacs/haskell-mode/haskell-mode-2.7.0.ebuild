# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-emacs/cvs-repo/gentoo-x86/app-emacs/haskell-mode/haskell-mode-2.7.0.ebuild,v 1.1 2009/12/02 20:45:14 ulm Exp $

inherit elisp

DESCRIPTION="Mode for editing (and running) Haskell programs in Emacs"
HOMEPAGE="http://projects.haskell.org/haskellmode-emacs/
	http://www.haskell.org/haskellwiki/Haskell_mode_for_Emacs"
SRC_URI="http://projects.haskell.org/haskellmode-emacs/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

DOCS="ChangeLog NEWS README *.hs"
SITEFILE="50${PN}-gentoo.el"

src_compile() {
	elisp-make-autoload-file haskell-site-file.el || die
	elisp-compile *.el || die
}

pkg_postinst() {
	elisp-site-regen

	elog "If you update from before version 2.5 you must reconfigure,"
	elog "or indentation will not work."
	elog "Read the README file in /usr/share/doc/${PF}."
}
