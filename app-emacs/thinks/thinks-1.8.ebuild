# Copyright 1999-2004 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-emacs/cvs-repo/gentoo-x86/app-emacs/thinks/Attic/thinks-1.8.ebuild,v 1.3 2004/06/15 10:04:32 kloeri Exp $

inherit elisp

DESCRIPTION="Insert text in a think bubble."
HOMEPAGE="http://www.davep.org/emacs/thinks.el"
SRC_URI="mirror://gentoo/${P}.tar.gz"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86"
IUSE=""
DEPEND="virtual/emacs"

SITEFILE=50thinks-gentoo.el
