# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-xemacs/cvs-repo/gentoo-x86/app-xemacs/eshell/Attic/eshell-1.03.ebuild,v 1.8 2005/01/01 17:03:24 eradicator Exp $

SLOT="0"
IUSE=""
DESCRIPTION="Command shell implemented entirely in Emacs Lisp"
PKG_CAT="standard"

DEPEND="app-xemacs/xemacs-base
app-xemacs/xemacs-eterm
"
KEYWORDS="x86 ~ppc ~alpha sparc"

inherit xemacs-packages
