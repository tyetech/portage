# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-dialup/cvs-repo/gentoo-x86/net-dialup/cutecom/cutecom-0.22.0.ebuild,v 1.2 2012/04/22 15:39:02 johu Exp $

EAPI=2

inherit eutils cmake-utils

DESCRIPTION="CuteCom is a serial terminal, like minicom, written in qt"
HOMEPAGE="http://cutecom.sourceforge.net"
SRC_URI="http://cutecom.sourceforge.net/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~x86"
IUSE=""

DEPEND="x11-libs/qt-core:4
	x11-libs/qt-gui:4
	x11-libs/qt-qt3support:4"
RDEPEND="${DEPEND}
	net-dialup/lrzsz"
