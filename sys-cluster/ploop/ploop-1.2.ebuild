# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sys-cluster/cvs-repo/gentoo-x86/sys-cluster/ploop/ploop-1.2.ebuild,v 1.1 2012/05/03 22:32:24 pva Exp $

EAPI=4

inherit eutils toolchain-funcs

DESCRIPTION="openvz tool and a library to control ploop block devices"
HOMEPAGE="http://wiki.openvz.org/Download/ploop"
SRC_URI="http://download.openvz.org/utils/ploop/${PV}/src/${P}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND="dev-libs/libxml2"
RDEPEND="${DEPEND}"

src_prepare() {
	# Respect CFLAGS and CC
	sed -e 's|CFLAGS =|CFLAGS +=|' -e "s|\(CC=\).*|\1$(tc-getCC)|" \
		-i Makefile.inc || die
	# Avoid striping of binaries
	sed -e '/INSTALL/{s: -s::}' -i tools/Makefile || die
	epatch "${FILESDIR}/ploop-1.2-soname.patch"
}

src_compile() {
	emake V=1
}

src_install() {
	emake DESTDIR="${D}" install
	dodoc tools/README
	ldconfig -n "${D}/usr/lib/" || die
}
