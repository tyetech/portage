# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sys-libs/cvs-repo/gentoo-x86/sys-libs/libieee1284/libieee1284-0.2.11-r2.ebuild,v 1.6 2012/05/12 11:03:23 xarthisius Exp $

EAPI="3"

PYTHON_DEPEND="python? 2"
inherit python

DESCRIPTION="Library to query devices using IEEE1284"
HOMEPAGE="http://cyberelk.net/tim/libieee1284/index.html"
SRC_URI="mirror://sourceforge/${PN}/${P}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 ppc x86 ~x86-fbsd"
IUSE="doc python static-libs"

RDEPEND=""
DEPEND="${RDEPEND}
	doc? (
		app-text/docbook-sgml-utils
		>=app-text/docbook-sgml-dtd-4.1
		app-text/docbook-dsssl-stylesheets
		dev-perl/XML-RegExp
	)"

pkg_setup() {
	python_set_active_version 2
}

src_configure() {
	econf \
		--enable-shared $(use_enable static-libs static) \
		$(use_with python) \
		--disable-dependency-tracking
}

src_install () {
	emake DESTDIR="${D}" install || die "emake install failed"
	find "${D}" -name '*.la' -delete
	dodoc AUTHORS NEWS README* TODO doc/interface* || die
}
