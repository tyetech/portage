# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-xemacs/cvs-repo/gentoo-x86/app-xemacs/cc-mode/Attic/cc-mode-1.31.ebuild,v 1.7 2005/01/01 16:58:44 eradicator Exp $

SLOT="0"
IUSE=""
DESCRIPTION="C, C++ and Java language support."
PKG_CAT="standard"

DEPEND="app-xemacs/xemacs-base
app-xemacs/mail-lib
"
KEYWORDS="x86 ~ppc ~alpha sparc"

inherit xemacs-packages
