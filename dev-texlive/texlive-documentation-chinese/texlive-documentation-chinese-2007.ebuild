# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-texlive/cvs-repo/gentoo-x86/dev-texlive/texlive-documentation-chinese/Attic/texlive-documentation-chinese-2007.ebuild,v 1.5 2007/10/25 15:53:22 corsair Exp $

TEXLIVE_MODULES_DEPS="dev-texlive/texlive-documentation-base
"
TEXLIVE_MODULE_CONTENTS="texlive-zh-cn collection-documentation-chinese
"
inherit texlive-module
DESCRIPTION="TeXLive Chinese documentation"

LICENSE="GPL-2 LPPL-1.3c"
SLOT="0"
KEYWORDS="~alpha ~ia64 ~ppc64 ~sparc ~x86"
