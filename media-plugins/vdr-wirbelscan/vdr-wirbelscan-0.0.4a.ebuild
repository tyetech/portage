# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-plugins/cvs-repo/gentoo-x86/media-plugins/vdr-wirbelscan/vdr-wirbelscan-0.0.4a.ebuild,v 1.1 2008/07/31 10:44:56 zzam Exp $

inherit vdr-plugin

MY_P=${P}_20080515

DESCRIPTION="VDR Plugin: Scan for channels on DVB-? and on PVR*-Cards"
HOMEPAGE="http://wirbel.htpc-forum.de/wirbelscan/index2.html"
SRC_URI="http://wirbel.htpc-forum.de/wirbelscan/${MY_P}.tgz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86"
IUSE=""

DEPEND="media-video/vdr
	!<media-tv/ivtv-0.8"
