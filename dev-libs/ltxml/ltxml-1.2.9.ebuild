# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-libs/cvs-repo/gentoo-x86/dev-libs/ltxml/ltxml-1.2.9.ebuild,v 1.3 2012/06/06 03:39:11 zmedico Exp $

EAPI=4

inherit multilib toolchain-funcs

DESCRIPTION="Integrated set of XML tools and a developers tool-kit with C API"
HOMEPAGE="http://www.ltg.ed.ac.uk/software/xml/"
SRC_URI=ftp://ftp.cogsci.ed.ac.uk/pub/LTXML/${P}.tar.gz

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~ia64 ~ppc ~x86"
IUSE=""

DEPEND="dev-lang/perl"
RDEPEND=""

PV_MAJ="${PV:0:1}${PV:2:1}"

S=${WORKDIR}/${P}/XML

src_prepare() {
	sed -e '/CFLAGS=/s:-g::' \
		-e '/CFLAGS=/s:-O2::' \
		-i configure || die
}

src_compile() {
	emake all
}

src_install() {
	emake -j1 install \
		datadir="${D}"/usr/$(get_libdir)/${PN}${PV_MAJ} \
		libdir="${D}"/usr/$(get_libdir) \
		prefix="${D}"/usr
}
