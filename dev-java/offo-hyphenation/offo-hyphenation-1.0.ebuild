# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-java/cvs-repo/gentoo-x86/dev-java/offo-hyphenation/offo-hyphenation-1.0.ebuild,v 1.5 2007/08/21 05:12:31 wltjr Exp $

DESCRIPTION="Hyphenation patterns for Apache Fop"
HOMEPAGE="http://offo.sourceforge.net"
# upstream will hopefully version future release...
SRC_URI="mirror://sourceforge/offo/${PN}.zip"
# review this upon update!
LICENSE="GPL-2 Apache-2.0 LPPL-1.3b TeX"
SLOT="0"
KEYWORDS="amd64 ~ia64 ppc ~ppc64 x86"
IUSE="doc"

RDEPEND=""
DEPEND="app-arch/unzip"

S="${WORKDIR}/${PN}"

src_compile() { :; }

src_install() {
	dodir /usr/share/${PN}/
	insinto /usr/share/${PN}/
	doins -r hyph

	dohtml licenses.html || die
	if use doc; then
		dohtml -r images skin i*.html
	fi
}

pkg_postinst() {
	elog "This package installs hyphenation files for several languages"
	elog "into /usr/share/${PN}/hyph"
	elog "Check /usr/share/doc/${PF}/html/licenses.html for each file's license."
	elog "To compile the patterns, install dev-java/fop with USE=hyphenation."
	elog "Alternatively, use the uncompiled patterns via the <hyphenation-base>"
	elog "configuration option. See the documentation for more details."
}
