# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-games/cvs-repo/gentoo-x86/dev-games/quake4-sdk/quake4-sdk-1.4.2.ebuild,v 1.2 2012/02/05 06:00:55 vapier Exp $

inherit unpacker games

DESCRIPTION="Quake4 SDK"
HOMEPAGE="http://www.iddevnet.com/quake4/"
SRC_URI="mirror://idsoftware/quake4/source/linux/quake4-linux-${PV}-sdk.x86.run"

LICENSE="QUAKE4"
SLOT="0"
KEYWORDS="-* ~amd64 ~x86"
IUSE=""
RESTRICT="strip"

S=${WORKDIR}

src_unpack() {
	unpack_makeself
	rm -rf setup.{sh,data} || die
}

src_install() {
	insinto "${GAMES_PREFIX_OPT}/${PN}"
	doins -r * || die
	prepgamesdirs
}
