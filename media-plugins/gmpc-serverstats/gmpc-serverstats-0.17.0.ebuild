# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-plugins/cvs-repo/gentoo-x86/media-plugins/gmpc-serverstats/Attic/gmpc-serverstats-0.17.0.ebuild,v 1.3 2009/03/20 15:54:04 armin76 Exp $

DESCRIPTION="This plugin shows more detailed information about mpd's database"
HOMEPAGE="http://gmpcwiki.sarine.nl/index.php/Server_statistics"
SRC_URI="mirror://sourceforge/musicpd/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 ~ppc sparc x86"
IUSE=""

RDEPEND=">=media-sound/gmpc-${PV}"
DEPEND="${RDEPEND}
	dev-util/pkgconfig"

src_install () {
	emake DESTDIR="${D}" install || die
}
