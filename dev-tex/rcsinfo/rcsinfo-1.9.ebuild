# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-tex/cvs-repo/gentoo-x86/dev-tex/rcsinfo/rcsinfo-1.9.ebuild,v 1.2 2004/12/28 21:19:57 absinthe Exp $

inherit latex-package

S="${WORKDIR}/${PN}"
LICENSE="LPPL-1.2"
DESCRIPTION="A LaTeX module to acces RCS/CVS version info"
HOMEPAGE="http://www.cvsnt.org/manual/rcsinfo.html"
# downloaded from
# ftp://ftp.ctan.org/pub/tex-archive/macros/latex/contrib/${PN}.tar.gz
SRC_URI="mirror://gentoo/${P}.tar.gz"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DOCS="README-1.9"
