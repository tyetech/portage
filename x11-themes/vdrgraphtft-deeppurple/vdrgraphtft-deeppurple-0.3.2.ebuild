# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-themes/cvs-repo/gentoo-x86/x11-themes/vdrgraphtft-deeppurple/vdrgraphtft-deeppurple-0.3.2.ebuild,v 1.1 2009/10/22 14:19:32 hd_brummy Exp $

EAPI="2"

inherit eutils

MY_PN="${PN/vdrgraphtft-deeppurple/DeepPurple}"

DESCRIPTION="GraphTFT theme: Alien vs Predator"
HOMEPAGE="http://www.vdr-wiki.de/wiki/index.php/Graphtft-plugin"
SRC_URI="http://vdr.websitec.de/download/${PN}/${MY_PN}.0.3.2.tar.bz2"

KEYWORDS="~x86 ~amd64"
SLOT="0"
LICENSE="GPL-2 LGPL-2.1"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}
		>=media-plugins/vdr-graphtft-0.3.1"

S="${WORKDIR}/DeepPurple"

src_prepare() {

	# remove dead links
	cd "${S}"/columnimages
	rm {srew.png,pause.png,frew1.png,frew2.png,frew3.png,play.png,ffwd1.png,ffwd2.png,ffwd3.png,sfwd.png,recOn.png}
}

src_install() {

	insinto /usr/share/vdr/graphTFT/themes/DeepPurple/
	doins -r "${S}"/*
}
