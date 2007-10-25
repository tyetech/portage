# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-texlive/cvs-repo/gentoo-x86/dev-texlive/texlive-documentation-russian/Attic/texlive-documentation-russian-2007.ebuild,v 1.2 2007/10/25 08:10:55 opfer Exp $

TEXLIVE_MODULES_DEPS="dev-texlive/texlive-documentation-base
"
TEXLIVE_MODULE_CONTENTS="lshort-russian texlive-ru collection-documentation-russian
"
inherit texlive-module
DESCRIPTION="TeXLive Russian documentation"

LICENSE="GPL-2 LPPL-1.3c"
SLOT="0"
KEYWORDS="~x86"
