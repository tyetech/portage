# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-cdr/cvs-repo/gentoo-x86/app-cdr/mode2cdmaker/mode2cdmaker-1.5.1.ebuild,v 1.5 2009/12/15 16:45:11 ssuominen Exp $

inherit eutils toolchain-funcs

DESCRIPTION="Utility to create mode-2 CDs, for example XCDs."
HOMEPAGE="http://www.gentoo.org/"
SRC_URI="mirror://gentoo/${P}-src.zip"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~x86"
IUSE=""

DEPEND="app-arch/unzip"
RDEPEND=""

S=${WORKDIR}

src_unpack() {
	unpack ${A}
	cd "${S}"
	epatch "${FILESDIR}"/${P}-gentoo.patch
}

src_compile() {
	tc-export CC
	emake -f Makefile.linux || die
}

src_install() {
	dobin mode2cdmaker || die
	dodoc {bugs,compatibility,readme}.txt
}
