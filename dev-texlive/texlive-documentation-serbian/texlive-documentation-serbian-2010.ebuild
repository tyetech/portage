# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-texlive/cvs-repo/gentoo-x86/dev-texlive/texlive-documentation-serbian/Attic/texlive-documentation-serbian-2010.ebuild,v 1.4 2010/11/01 22:27:22 maekke Exp $

EAPI="3"

TEXLIVE_MODULE_CONTENTS="texlive-sr collection-documentation-serbian
"
TEXLIVE_MODULE_DOC_CONTENTS="texlive-sr.doc "
TEXLIVE_MODULE_SRC_CONTENTS=""
inherit texlive-module
DESCRIPTION="TeXLive Serbian documentation"

LICENSE="GPL-2 "
SLOT="0"
KEYWORDS="~amd64 ~arm ~hppa ~x86 ~x86-fbsd"
IUSE=""
DEPEND=">=dev-texlive/texlive-documentation-base-2010
"
RDEPEND="${DEPEND} "
