# Copyright 1999-2002 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-plugins/cvs-repo/gentoo-x86/x11-plugins/wmweather+/Attic/wmweather+-2.1.ebuild,v 1.2 2003/01/18 08:38:30 seemant Exp $

IUSE=""

S=${WORKDIR}/${P}
DESCRIPTION="A dockapp for displaying data collected from METAR, AVN, ETA, and MRF forecasts"
HOMEPAGE="http://www.sourceforge.net/projects/wmweatherplus/"
SRC_URI="mirror://sourceforge/wmweatherplus/${P}.tar.gz"

SLOT="0"
LICENSE="GPL-2"
KEYWORDS="x86"

DEPEND="x11-wm/WindowMaker
	dev-libs/libpcre
	media-libs/xpm
	net-libs/libwww"

src_install() {
	dobin wmweather+
	dodoc COPYING ChangeLog HINTS README example.conf
	doman wmweather+.1
}
