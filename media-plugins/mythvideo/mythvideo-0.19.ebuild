# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-plugins/cvs-repo/gentoo-x86/media-plugins/mythvideo/Attic/mythvideo-0.19.ebuild,v 1.5 2006/09/14 05:38:04 cardoe Exp $

inherit eutils mythtv-plugins

DESCRIPTION="Video player module for MythTV."
IUSE=""
KEYWORDS="~amd64 ppc ~x86"

RDEPEND="dev-perl/libwww-perl
	dev-perl/HTML-Parser
	dev-perl/URI
	dev-perl/XML-Simple
	media-video/mplayer"
DEPEND="${RDEPEND}"

src_unpack() {
	mythtv-plugins_src_unpack
	epatch "${FILESDIR}"/${P}-gcc41.patch
}
