# Copyright 1999-2003 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/games-action/cvs-repo/gentoo-x86/games-action/orbital-eunuchs-sniper/Attic/orbital-eunuchs-sniper-1.29.ebuild,v 1.2 2003/10/25 00:39:11 mr_bones_ Exp $

inherit games

S="${WORKDIR}/orbital_eunuchs_sniper-${PV}"
DESCRIPTION="Snipe terrorists from your orbital base"
HOMEPAGE="http://icculus.org/oes"
SRC_URI="http://filesingularity.timedoctor.org/orbital_eunuchs_sniper-${PV}.tar.gz"

LICENSE="ZLIB"
SLOT="0"
KEYWORDS="x86 ppc"

DEPEND=">=media-libs/libsdl-1.2.5-r1
	>=media-libs/sdl-mixer-1.2.5-r1
	>=media-libs/sdl-image-1.2.2"

src_install() {
	make DESTDIR=${D} install                      || die "make install failed"
	dodoc AUTHORS ChangeLog README TODO readme.txt || die "dodoc failed"
	prepgamesdirs
}
