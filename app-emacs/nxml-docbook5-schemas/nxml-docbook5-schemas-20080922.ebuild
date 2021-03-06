# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-emacs/cvs-repo/gentoo-x86/app-emacs/nxml-docbook5-schemas/nxml-docbook5-schemas-20080922.ebuild,v 1.3 2012/09/26 06:50:11 ulm Exp $

EAPI=4

NEED_EMACS=23
inherit elisp

DESCRIPTION="Add support for DocBook 5 schemas to NXML"
HOMEPAGE="http://www.docbook.org/schemas/5x.html"
SRC_URI="http://www.docbook.org/xml/5.0/rng/docbookxi.rnc"

LICENSE="HPND"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

S="${WORKDIR}"
SITEFILE="60${PN}-gentoo.el"

src_unpack() { :; }

src_compile() { :; }

src_install() {
	insinto ${SITEETC}/${PN}
	doins "${FILESDIR}"/schemas.xml "${DISTDIR}"/docbookxi.rnc
	elisp-site-file-install "${FILESDIR}/${SITEFILE}" || die
}
