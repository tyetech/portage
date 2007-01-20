# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-plugins/cvs-repo/gentoo-x86/media-plugins/vdr-svdrpext/Attic/vdr-svdrpext-0.0.1.ebuild,v 1.2 2007/01/20 10:34:50 zzam Exp $

inherit vdr-plugin

DESCRIPTION="Video Disk Recorder svdrpext PlugIn"
HOMEPAGE="http://vdr.schmirler.de/"
SRC_URI="http://vdr.schmirler.de/svdrpext/${P}.tgz"

SLOT="0"
LICENSE="GPL-2"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND=">=media-video/vdr-1.4.0"
