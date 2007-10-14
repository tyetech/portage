# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-texlive/cvs-repo/gentoo-x86/dev-texlive/texlive-genericextra/Attic/texlive-genericextra-2007.ebuild,v 1.1 2007/10/14 09:03:16 aballier Exp $

TEXLIVE_MODULES_DEPS="dev-texlive/texlive-basic
"
TEXLIVE_MODULE_CONTENTS="abbr abstyles aurora barr borceux c-pascal colorsep dinat eijkhout fltpoint insbox mathdots metatex mftoeps midnight multi ofs pdf-trans psfig realcalc vrb vtex collection-genericextra
"
inherit texlive-module
DESCRIPTION="TeXLive Miscellaneous extra generic macros"

LICENSE="GPL-2 LPPL-1.3c"
SLOT="0"
KEYWORDS=""
