# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-emacs/cvs-repo/gentoo-x86/app-emacs/htmlize/htmlize-1.36.ebuild,v 1.6 2012/09/21 16:04:36 ulm Exp $

inherit elisp

DESCRIPTION="HTML-ize font-lock buffers in Emacs"
HOMEPAGE="http://www.emacswiki.org/cgi-bin/wiki.pl?SaveAsHtml
	http://fly.srk.fer.hr/~hniksic/emacs/"
SRC_URI="mirror://gentoo/${P}.el.bz2"

LICENSE="GPL-2+"
SLOT="0"
KEYWORDS="amd64 ppc sparc x86"
IUSE=""

SITEFILE="50${PN}-gentoo.el"
