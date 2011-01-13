# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-libs/cvs-repo/gentoo-x86/media-libs/libmpdclient/Attic/libmpdclient-2.3.ebuild,v 1.8 2011/01/13 16:24:38 ranger Exp $

DESCRIPTION="A library for interfacing Music Player Daemon (media-sound/mpd)"
HOMEPAGE="http://www.musicpd.org"
SRC_URI="mirror://sourceforge/musicpd/${P}.tar.bz2"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm hppa ppc ~ppc64 sparc x86"
IUSE=""

src_install() {
	emake install DESTDIR="${D}" || die "emake install failed"
	rm -rf "${D}"/usr/share/doc/${PN}
	dodoc AUTHORS NEWS README
}
