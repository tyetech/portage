# Copyright 1999-2003 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/games-emulation/cvs-repo/gentoo-x86/games-emulation/emutos/Attic/emutos-0.7.ebuild,v 1.1 2003/09/19 07:31:29 msterret Exp $

inherit games

S="${WORKDIR}/${PN}"
DESCRIPTION="a single-user single-tasking operating system for 32 bit Atari computer emulators"
HOMEPAGE="http://emutos.sourceforge.net"
SRC_URI="mirror://sourceforge/emutos/etos512k-${PV}.zip
	mirror://sourceforge/emutos/etos256k-${PV}.zip"

LICENSE="GPL-2"
KEYWORDS="x86"
SLOT="0"

DEPEND="app-arch/unzip"

src_install() {
	dogameslib *.img
	dodoc doc/{announce,authors,changelog,readme,status}.txt
	prepgamesdirs
}
