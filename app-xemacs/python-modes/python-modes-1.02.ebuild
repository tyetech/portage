# Copyright 1999-2003 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-xemacs/cvs-repo/gentoo-x86/app-xemacs/python-modes/Attic/python-modes-1.02.ebuild,v 1.2 2003/10/03 02:36:40 agriffis Exp $

SLOT="0"
IUSE=""
DESCRIPTION="Python support."
PKG_CAT="standard"

DEPEND="app-xemacs/xemacs-base
app-xemacs/mail-lib
"
KEYWORDS="x86 ~ppc alpha sparc"

inherit xemacs-packages

