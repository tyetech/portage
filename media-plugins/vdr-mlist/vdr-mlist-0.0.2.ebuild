# Copyright 2003-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-plugins/cvs-repo/gentoo-x86/media-plugins/vdr-mlist/Attic/vdr-mlist-0.0.2.ebuild,v 1.1 2006/04/23 20:22:02 zzam Exp $

IUSE=""

inherit vdr-plugin eutils

DESCRIPTION="VDR - Message History plugin"
HOMEPAGE="http://joachim-wilke.de/vdr-mlist.htm"
SRC_URI="http://joachim-wilke.de/vdr-mlist/${P}.tgz"
KEYWORDS="~x86"
SLOT="0"
LICENSE="GPL-2"

DEPEND=">=media-video/vdr-1.3.30"

