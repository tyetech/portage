# Copyright 1999-2002 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-xemacs/cvs-repo/gentoo-x86/app-xemacs/edict/Attic/edict-1.13.ebuild,v 1.2 2003/01/16 15:12:52 rendhalver Exp $

SLOT="0"
IUSE=""
DESCRIPTION="MULE: Lisp Interface to EDICT, Kanji Dictionary"
PKG_CAT="mule"

DEPEND="app-xemacs/mule-base
app-xemacs/xemacs-base
"
KEYWORDS="x86 -ppc alpha sparc"

inherit xemacs-packages

