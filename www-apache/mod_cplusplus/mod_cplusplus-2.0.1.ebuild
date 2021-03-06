# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/www-apache/cvs-repo/gentoo-x86/www-apache/mod_cplusplus/mod_cplusplus-2.0.1.ebuild,v 1.1 2009/09/17 08:38:31 hollow Exp $

EAPI="2"

inherit apache-module autotools

DESCRIPTION="Easily implement object oriented apache-2.0 handlers with C++"
HOMEPAGE="http://modcplusplus.sourceforge.net/"
SRC_URI="mirror://sourceforge/modcplusplus/modcplusplus-${PV}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=""
DEPEND=""

APACHE2_MOD_CONF="51_${PN}"
APACHE2_MOD_DEFINE="CPLUSPLUS"

DOCFILES="README"

need_apache2

S="${WORKDIR}/${PN}"

src_prepare() {
	sed -i -e 's/-Werror //g' configure.in
	eautoreconf
}

src_configure() {
	econf --with-apxs=${APXS} || die "econf failed"
}

src_compile() {
	emake || die "emake failed"
}

src_install() {
	insinto /usr/include/apache2
	doins "${S}"/include/*.h
	mv "${S}"/src/.libs/{libmod_cplusplus-1.1.0,mod_cplusplus}.so
	apache-module_src_install
}
