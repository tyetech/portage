# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-video/cvs-repo/gentoo-x86/media-video/ksubtile/Attic/ksubtile-1.2.ebuild,v 1.1 2005/11/10 17:26:27 greg_g Exp $

inherit kde

DESCRIPTION="Utility to edit subtitles in SRT format."
HOMEPAGE="http://ksubtile.sourceforge.net/"
SRC_URI="mirror://sourceforge/ksubtile/${P}.tar.gz"
LICENSE="GPL-2"

SLOT="0"
KEYWORDS="~amd64 ~ppc ~x86"
IUSE=""

RDEPEND="media-video/mplayer"

need-kde 3
