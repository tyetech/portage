# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-sound/cvs-repo/gentoo-x86/media-sound/neroaac/neroaac-1.5.1.ebuild,v 1.4 2012/06/13 08:15:35 sbriesen Exp $

EAPI=4

inherit eutils

DESCRIPTION="Nero AAC reference quality MPEG-4 and 3GPP audio codec"
HOMEPAGE="http://www.nero.com/enu/technologies-aac-codec.html"
SRC_URI="http://ftp6.nero.com/tools/NeroAACCodec-${PV}.zip"

LICENSE="Nero-AAC-EULA"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="doc"

RDEPEND=""
DEPEND="app-arch/unzip"

RESTRICT="strip mirror test"

QA_PRESTRIPPED="opt/${PN}/${PV}/neroAac\(Dec\|Enc\|Tag\)"
QA_EXECSTACK="opt/${PN}/${PV}/neroAacDec opt/${PN}/${PV}/neroAacEnc"
QA_FLAGS_IGNORED="${QA_PRESTRIPPED}"

S="${WORKDIR}"

src_prepare() {
	edos2unix *.txt
}

src_install() {
	exeinto /opt/${PN}/${PV}
	doexe linux/*
	dodir /opt/bin
	dosym ../${PN}/${PV}/neroAacDec /opt/bin/neroAacDec
	dosym ../${PN}/${PV}/neroAacEnc /opt/bin/neroAacEnc
	dosym ../${PN}/${PV}/neroAacTag /opt/bin/neroAacTag
	newdoc readme.txt README
	newdoc license.txt LICENSE
	newdoc changelog.txt ChangeLog
	if use doc; then
		insinto /usr/share/doc/${PF}
		doins NeroAAC_tut.pdf
	fi
}
