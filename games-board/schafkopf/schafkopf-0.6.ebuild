# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/games-board/cvs-repo/gentoo-x86/games-board/schafkopf/Attic/schafkopf-0.6.ebuild,v 1.1 2005/08/24 06:18:07 mr_bones_ Exp $

inherit kde

DESCRIPTION="a KDE version of a popular Bavarian card game."
HOMEPAGE="http://schafkopf.berlios.de"
SRC_URI="http://download.berlios.de/schafkopf/${P}.tar.gz"

LICENSE="GPL-2"
SLOT=0
KEYWORDS="~x86"
IUSE=""

DEPEND=">=kde-base/kdegames-3.2.0"

need-kde 3
