# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-xemacs/cvs-repo/gentoo-x86/app-xemacs/c-support/c-support-1.22.ebuild,v 1.3 2007/06/03 17:54:44 graaff Exp $

SLOT="0"
IUSE=""
DESCRIPTION="Basic single-file add-ons for editing C code."
PKG_CAT="standard"

RDEPEND="app-xemacs/cc-mode
app-xemacs/xemacs-base
"
KEYWORDS="alpha amd64 ppc ppc64 sparc x86"

inherit xemacs-packages
