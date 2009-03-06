# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-texlive/cvs-repo/gentoo-x86/dev-texlive/texlive-documentation-chinese/Attic/texlive-documentation-chinese-2008.ebuild,v 1.4 2009/03/06 20:45:44 jer Exp $

TEXLIVE_MODULE_CONTENTS="texlive-zh-cn lnotes lshort-chinese collection-documentation-chinese
"
TEXLIVE_MODULE_DOC_CONTENTS="texlive-zh-cn.doc lnotes.doc lshort-chinese.doc "
TEXLIVE_MODULE_SRC_CONTENTS="texlive-zh-cn.source "
inherit texlive-module
DESCRIPTION="TeXLive Chinese documentation"

LICENSE="GPL-2 "
SLOT="0"
KEYWORDS="~alpha ~amd64 hppa ~ia64 ~ppc ~ppc64 sparc ~x86 ~x86-fbsd"
IUSE=""
DEPEND=">=dev-texlive/texlive-documentation-base-2008
"
RDEPEND="${DEPEND}"
