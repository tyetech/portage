# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-texlive/cvs-repo/gentoo-x86/dev-texlive/texlive-langswedish/texlive-langswedish-2011.ebuild,v 1.10 2012/05/09 15:17:51 aballier Exp $

EAPI="3"

TEXLIVE_MODULE_CONTENTS="swebib hyphen-swedish collection-langswedish
"
TEXLIVE_MODULE_DOC_CONTENTS="swebib.doc "
TEXLIVE_MODULE_SRC_CONTENTS=""
inherit  texlive-module
DESCRIPTION="TeXLive Swedish"

LICENSE="GPL-2 LPPL-1.2 "
SLOT="0"
KEYWORDS="alpha amd64 arm hppa ia64 ~mips ppc ppc64 s390 sh sparc x86 ~amd64-fbsd ~x86-fbsd ~amd64-linux ~x86-linux ~ppc-macos ~x64-macos ~x86-macos ~sparc-solaris ~x64-solaris ~x86-solaris"
IUSE=""
DEPEND=">=dev-texlive/texlive-basic-2011
"
RDEPEND="${DEPEND} "
