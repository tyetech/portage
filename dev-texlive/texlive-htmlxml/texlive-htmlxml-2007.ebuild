# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-texlive/cvs-repo/gentoo-x86/dev-texlive/texlive-htmlxml/Attic/texlive-htmlxml-2007.ebuild,v 1.1 2007/10/14 09:04:46 aballier Exp $

TEXLIVE_MODULES_DEPS="dev-texlive/texlive-basic
dev-texlive/texlive-fontsrecommended
dev-texlive/texlive-latex
"
TEXLIVE_MODULE_CONTENTS="bin-jadetex bin-tex4htk bin-xmltex jadetex passivetex tex4ht xmlplay xmltex collection-htmlxml
"
inherit texlive-module
DESCRIPTION="TeXLive HTML/SGML/XML support"

LICENSE="GPL-2 LPPL-1.3c"
SLOT="0"
KEYWORDS=""
