# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-video/cvs-repo/gentoo-x86/media-video/avinfo/avinfo-1.0_alpha15.ebuild,v 1.7 2006/07/03 04:32:07 tcort Exp $

inherit eutils

MY_P="${PN}-1.0a15"
DESCRIPTION="Utility for displaying AVI information"
HOMEPAGE="http://shounen.ru/soft/avinfo/english.shtml"
SRC_URI="http://shounen.ru/soft/avinfo/${MY_P}.zip"

SLOT="0"
LICENSE="GPL-2"
KEYWORDS="amd64 ppc x86"

IUSE=""
DEPEND="app-arch/unzip"

S=${WORKDIR}

src_compile() {
	cd src
	emake CFLAGS="${CFLAGS}" OUTPUTNAME=avinfo || die
}

src_install() {
	dobin src/avinfo
	dodoc CHANGELOG README
	dodoc doc/*
}
