# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sys-fs/cvs-repo/gentoo-x86/sys-fs/ddrescue/ddrescue-1.15-r1.ebuild,v 1.1 2012/05/03 12:20:24 xmw Exp $

EAPI=4

inherit toolchain-funcs

DESCRIPTION="Copies data from one file or block device to another with read-error recovery"
HOMEPAGE="http://www.gnu.org/software/ddrescue/ddrescue.html"
SRC_URI="mirror://gnu/${PN}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~arm ~ia64 ~ppc ~sparc ~x86 ~amd64-linux"
IUSE=""

DEPEND=""
RDEPEND=""

src_configure() {
	# not a normal configure script
	econf \
		--prefix="${EPREFIX}"//usr \
		CC="$(tc-getCC)" \
		CXX="$(tc-getCXX)" \
		CPPFLAGS="${CPPFLAGS}" \
		CFLAGS="${CFLAGS}" \
		CXXFLAGS="${CXXFLAGS}" \
		LDFLAGS="${LDFLAGS}"
}

src_test() {
	./testsuite/check.sh "${S}"/testsuite || die
}

src_install() {
	emake DESTDIR="${D}" install install-man
	dodoc ChangeLog README NEWS AUTHORS
}
