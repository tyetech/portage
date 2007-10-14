# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-texlive/cvs-repo/gentoo-x86/dev-texlive/texlive-langczechslovak/Attic/texlive-langczechslovak-2007.ebuild,v 1.1 2007/10/14 09:34:29 aballier Exp $

TEXLIVE_MODULES_DEPS="dev-texlive/texlive-basic
dev-texlive/texlive-latex
"
TEXLIVE_MODULE_CONTENTS="bin-cslatex bin-csplain bin-vlna cs cslatex csplain hyphen-czechslovak collection-langczechslovak
"
inherit texlive-module
DESCRIPTION="TeXLive Czech/Slovak"

LICENSE="GPL-2 LPPL-1.3c"
SLOT="0"
KEYWORDS=""
