# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-fonts/cvs-repo/gentoo-x86/media-fonts/fgdc-emergency/fgdc-emergency-2.20.ebuild,v 1.2 2011/06/14 10:54:26 pva Exp $

inherit font

DESCRIPTION="FGDC Emergency Response Symbology Prototype"
HOMEPAGE="http://www.fgdc.gov/HSWG/"
SRC_URI="http://www.fgdc.gov/HSWG/symbol_downloads/ers_v${PV//./}.zip"
LICENSE="public-domain"

SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND="app-arch/unzip"
RDEPEND=""

S="${WORKDIR}/ersSymbolsVersion0202"

FONT_SUFFIX="ttf"

DOCS="readme.txt"

FONT_S="${S}"

src_install(){

	cd "${FONT_S}"
	cp ersV2sym/*.ttf .
	cp ersV2txt/*.ttf .

	font_src_install
}
