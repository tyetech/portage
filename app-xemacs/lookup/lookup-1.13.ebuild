# Copyright 1999-2003 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-xemacs/cvs-repo/gentoo-x86/app-xemacs/lookup/Attic/lookup-1.13.ebuild,v 1.3 2003/02/13 09:54:56 vapier Exp $

SLOT="0"
IUSE=""
DESCRIPTION="MULE: Dictionary support"
PKG_CAT="mule"

DEPEND="app-xemacs/mule-base
app-xemacs/cookie
"
KEYWORDS="x86 -ppc alpha sparc"

inherit xemacs-packages

