# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sci-biology/cvs-repo/gentoo-x86/sci-biology/elph/elph-1.0.1.ebuild,v 1.5 2010/08/09 18:24:26 xarthisius Exp $

inherit eutils toolchain-funcs

DESCRIPTION="Estimated Locations of Pattern Hits - Motif finder program"
LICENSE="Artistic"
HOMEPAGE="http://cbcb.umd.edu/software/ELPH/"
SRC_URI="ftp://ftp.cbcb.umd.edu/pub/software/elph/ELPH-${PV}.tar.gz"

SLOT="0"
IUSE=""
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux ~ppc-macos"

S=${WORKDIR}/ELPH/sources

src_compile() {
	emake CC="$(tc-getCXX)" LINKER="$(tc-getCXX)" \
		CFLAGS="${CXXFLAGS} -D_REENTRANT" LDFLAGS="${LDFLAGS}" || die
}

src_install() {
	dobin elph || die "Failed to install program."
	cd "${WORKDIR}"/ELPH
	dodoc VERSION || die "Documentation installation failed."
	newdoc Readme.ELPH README || die "Readme installation failed."
}
