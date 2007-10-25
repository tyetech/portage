# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-texlive/cvs-repo/gentoo-x86/dev-texlive/texlive-langfinnish/Attic/texlive-langfinnish-2007.ebuild,v 1.3 2007/10/25 12:46:16 fmccor Exp $

TEXLIVE_MODULES_DEPS="dev-texlive/texlive-basic
"
TEXLIVE_MODULE_CONTENTS="finbib hyphen-finnish collection-langfinnish
"
inherit texlive-module
DESCRIPTION="TeXLive Finnish"

LICENSE="GPL-2 LPPL-1.3c"
SLOT="0"
KEYWORDS="~sparc ~x86"
