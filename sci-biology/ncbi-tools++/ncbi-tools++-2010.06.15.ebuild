# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sci-biology/cvs-repo/gentoo-x86/sci-biology/ncbi-tools++/ncbi-tools++-2010.06.15.ebuild,v 1.3 2011/05/04 19:06:17 jlec Exp $

EAPI="3"

inherit eutils flag-o-matic multilib toolchain-funcs

MY_TAG="Jun_15_2010"
MY_Y="${MY_TAG/*_/}"
MY_P="ncbi_cxx--${MY_TAG}"

DESCRIPTION="NCBI C++ Toolkit, including NCBI BLAST+"
HOMEPAGE="http://www.ncbi.nlm.nih.gov/books/bv.fcgi?rid=toolkit"
SRC_URI="ftp://ftp.ncbi.nih.gov/toolbox/ncbi_tools++/${MY_Y}/${MY_TAG}/${MY_P}.tar.gz"

LICENSE="public-domain"
SLOT="0"
IUSE="sqlite mysql"
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux"

DEPEND="
	sqlite? ( dev-db/sqlite:3 )
	mysql? ( virtual/mysql )"
RDEPEND="${DEPEND}"

S="${WORKDIR}/${MY_P}"

src_prepare() {
	filter-ldflags -Wl,--as-needed
	sed -i -e 's/-print-file-name=libstdc++.a//' \
		-e '/sed/ s/\([gO]\[0-9\]\)\*/\1\\+/' \
		src/build-system/configure || die
	epatch "${FILESDIR}"/${P}-gcc46.patch
}

src_configure() {
	tc-export CXX CC

	"${S}"/configure --without-debug \
		--with-bin-release \
		--with-bincopy \
		--without-static \
		--with-dll \
		--with-mt \
		--prefix="${ED}"/usr \
		--libdir="${ED}"/usr/$(get_libdir)/${PN} \
		|| die
}

src_compile() {
	emake all_r -C GCC*-Release*/build || die
}

src_install() {
	emake install || die
	# File collisions with sci-biology/ncbi-tools
	rm -f "${ED}"/usr/bin/{asn2asn,rpsblast,test_regexp}

	echo "LDPATH=${EPREFIX}/usr/$(get_libdir)/${PN}" > ${S}/99${PN}
	doenvd "${S}/99${PN}"
}

pkg_postinst() {
	einfo 'Please run "source /etc/profile" before using this package in the current shell.'
}
