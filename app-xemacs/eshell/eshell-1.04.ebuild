# Copyright 1999-2004 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-xemacs/cvs-repo/gentoo-x86/app-xemacs/eshell/Attic/eshell-1.04.ebuild,v 1.4 2004/04/01 00:13:34 jhuebel Exp $

SLOT="0"
IUSE=""
DESCRIPTION="Command shell implemented entirely in Emacs Lisp"
PKG_CAT="standard"

DEPEND="app-xemacs/xemacs-base
app-xemacs/eterm
"
KEYWORDS="x86 ~ppc alpha sparc amd64"

inherit xemacs-packages
