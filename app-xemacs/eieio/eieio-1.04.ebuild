# Copyright 1999-2003 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-xemacs/cvs-repo/gentoo-x86/app-xemacs/eieio/Attic/eieio-1.04.ebuild,v 1.2 2003/10/03 02:22:56 agriffis Exp $

SLOT="0"
IUSE=""
DESCRIPTION="Enhanced Implementation of Emacs Interpreted Objects"
PKG_CAT="standard"

DEPEND="app-xemacs/speedbar
app-xemacs/xemacs-base
app-xemacs/edebug
"
KEYWORDS="x86 ~ppc alpha sparc"

inherit xemacs-packages

