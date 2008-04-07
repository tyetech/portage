# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-fonts/cvs-repo/gentoo-x86/media-fonts/skinenigmang-fonts/Attic/skinenigmang-fonts-20080401.ebuild,v 1.1 2008/04/07 16:24:29 zzam Exp $

inherit font

DESCRIPTION="Font that contains symbols needed for VDR"

HOMEPAGE="http://www.vdr-portal.de/board/thread.php?threadid=74751"
SRC_URI="http://andreas.vdr-developer.org/enigmang/download/${P}.tgz"

LICENSE="BitstreamVera"

SLOT="0"
KEYWORDS="~x86"
IUSE=""
DEPEND=""
RDEPEND=""

S=${WORKDIR}/vdrsymbols

FONT_SUFFIX="ttf"
