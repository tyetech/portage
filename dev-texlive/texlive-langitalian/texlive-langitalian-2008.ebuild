# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-texlive/cvs-repo/gentoo-x86/dev-texlive/texlive-langitalian/Attic/texlive-langitalian-2008.ebuild,v 1.1 2008/09/09 16:39:27 aballier Exp $

TEXLIVE_MODULES_DEPS="dev-texlive/texlive-basic
"
TEXLIVE_MODULE_CONTENTS="frontespizio hyphen-italian itnumpar collection-langitalian
"
TEXLIVE_MODULE_DOC_CONTENTS="frontespizio.doc itnumpar.doc "
TEXLIVE_MODULE_SRC_CONTENTS="frontespizio.source itnumpar.source "
inherit texlive-module
DESCRIPTION="TeXLive Italian"

LICENSE="GPL-2 LPPL-1.3 "
SLOT="0"
KEYWORDS="~alpha ~amd64 ~hppa ~ia64 ~ppc ~ppc64 ~sparc ~x86 ~x86-fbsd"
IUSE=""
