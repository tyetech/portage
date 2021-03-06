# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-texlive/cvs-repo/gentoo-x86/dev-texlive/texlive-langvietnamese/texlive-langvietnamese-2012.ebuild,v 1.2 2012/10/03 18:19:54 ulm Exp $

EAPI="4"

TEXLIVE_MODULE_CONTENTS="vntex collection-langvietnamese
"
TEXLIVE_MODULE_DOC_CONTENTS="vntex.doc "
TEXLIVE_MODULE_SRC_CONTENTS="vntex.source "
inherit  texlive-module
DESCRIPTION="TeXLive Vietnamese"

LICENSE="GPL-2 TeX-other-free"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~mips ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86 ~amd64-fbsd ~x86-fbsd ~amd64-linux ~x86-linux ~ppc-macos ~x64-macos ~x86-macos ~sparc-solaris ~x64-solaris ~x86-solaris"
IUSE=""
DEPEND=">=dev-texlive/texlive-basic-2012
"
RDEPEND="${DEPEND} "
