# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-sci/cvs-repo/gentoo-x86/app-sci/njplot-unrooted/Attic/njplot-unrooted-1.ebuild,v 1.2 2004/12/23 18:51:33 ribosome Exp $

DESCRIPTION="A phylogenetic tree drawing program which supports tree rooting"
HOMEPAGE="http://pbil.univ-lyon1.fr/software/njplot.html"
SRC_URI="mirror://gentoo/${P}.tar.bz2"
LICENSE="public-domain"

SLOT="0"
KEYWORDS="~x86"
IUSE=""

DEPEND="sci-biology/ncbi-tools
	virtual/x11"

src_unpack() {
	unpack ${A}
	cd ${S}
	sed -i -e "s%njplot.help%/usr/share/doc/${PF}/njplot.help%" njplot-vib.c
}

src_compile() {
	make -e || die
}

src_install() {
	dobin newicktops njplot unrooted

	insinto /usr/share/doc/${PF}
	doins njplot.help

	insinto /usr/share/${PN}
	doins test.ph
}
