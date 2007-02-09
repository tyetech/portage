# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-video/cvs-repo/gentoo-x86/media-video/kplayer/Attic/kplayer-0.5.3.ebuild,v 1.5 2007/02/09 16:06:51 masterdriverz Exp $

inherit kde

DESCRIPTION="KPlayer is a KDE media player based on mplayer."
HOMEPAGE="http://kplayer.sourceforge.net/"
SRC_URI="mirror://sourceforge/kplayer/${P}.tar.bz2"

SLOT="0"
LICENSE="GPL-2"
KEYWORDS="amd64 ~ppc x86"
IUSE=""

DEPEND="media-video/mplayer"
need-kde 3.1
