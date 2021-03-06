# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-texlive/cvs-repo/gentoo-x86/dev-texlive/texlive-documentation-dutch/texlive-documentation-dutch-2011.ebuild,v 1.10 2012/05/09 17:04:36 aballier Exp $

EAPI="3"

TEXLIVE_MODULE_CONTENTS="lshort-dutch collection-documentation-dutch
"
TEXLIVE_MODULE_DOC_CONTENTS="lshort-dutch.doc "
TEXLIVE_MODULE_SRC_CONTENTS=""
inherit  texlive-module
DESCRIPTION="TeXLive Dutch documentation"

LICENSE="GPL-2 GPL-1 "
SLOT="0"
KEYWORDS="alpha amd64 arm hppa ia64 ~mips ppc ppc64 s390 sh sparc x86 ~amd64-fbsd ~x86-fbsd ~amd64-linux ~x86-linux ~ppc-macos ~x64-macos ~x86-macos ~sparc-solaris ~x64-solaris ~x86-solaris"
IUSE=""
DEPEND=">=dev-texlive/texlive-documentation-base-2011
"
RDEPEND="${DEPEND} "
