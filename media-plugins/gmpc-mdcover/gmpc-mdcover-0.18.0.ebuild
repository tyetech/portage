# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-plugins/cvs-repo/gentoo-x86/media-plugins/gmpc-mdcover/Attic/gmpc-mdcover-0.18.0.ebuild,v 1.5 2009/06/09 19:07:38 fauli Exp $

EAPI=2

DESCRIPTION="This plugin fetches cover art, artist art, album and artist information from the file system"
HOMEPAGE="http://gmpcwiki.sarine.nl/index.php/Mdcover"
SRC_URI="mirror://sourceforge/musicpd/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 ppc sparc x86"
IUSE=""

RDEPEND=">=media-sound/gmpc-${PV}
	dev-libs/libxml2
	x11-libs/gtk+:2[jpeg]"
DEPEND="${RDEPEND}
	dev-util/pkgconfig"

src_install () {
	emake DESTDIR="${D}" install || die "emake install failed"
}
