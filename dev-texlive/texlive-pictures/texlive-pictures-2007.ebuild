# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-texlive/cvs-repo/gentoo-x86/dev-texlive/texlive-pictures/Attic/texlive-pictures-2007.ebuild,v 1.2 2007/10/25 08:20:52 opfer Exp $

TEXLIVE_MODULES_DEPS="dev-texlive/texlive-basic
"
TEXLIVE_MODULE_CONTENTS="bardiag curve curve2e curves dcpic dottex dratex eepic gnuplottex miniplot pb-diagram petri-nets picinpar pict2e pictex pictex2 pmgraph randbild swimgraf texdraw xypic collection-pictures
"
inherit texlive-module
DESCRIPTION="TeXLive Packages for drawings graphics"

LICENSE="GPL-2 LPPL-1.3c"
SLOT="0"
KEYWORDS="~x86"
