# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/www-apache/cvs-repo/gentoo-x86/www-apache/mod_diagnostics/mod_diagnostics-0.0.1.ebuild,v 1.6 2007/01/15 16:58:56 chtekk Exp $

inherit apache-module

KEYWORDS="x86"

DESCRIPTION="An Apache2 module which can do debugging of modules in the Apache2 Filter Chain."
HOMEPAGE="http://apache.webthing.com/mod_diagnostics/"
SRC_URI="mirror://gentoo/${P}.c"
LICENSE="GPL-2"
SLOT="0"
IUSE=""

DEPEND=""
RDEPEND=""

APACHE2_MOD_CONF="20_${PN}"
APACHE2_MOD_DEFINE="DIAGNOSTICS"

need_apache2

src_unpack() {
	mkdir -p "${S}" || die "mkdir S failed"
	cp -f "${DISTDIR}/${P}.c" "${S}/${PN}.c" || die "source copy failed"
}
