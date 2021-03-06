# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/games-emulation/cvs-repo/gentoo-x86/games-emulation/zinc/zinc-1.1.ebuild,v 1.6 2007/02/12 17:35:51 blubb Exp $

inherit games

DESCRIPTION="An x86 binary-only emulator for the Sony ZN-1, ZN-2, and Namco System 11 arcade systems"
HOMEPAGE="http://www.emuhype.com/"
SRC_URI="http://www.emuhype.com/files/${P//[-.]/}-lnx.tar.bz2"

LICENSE="as-is"
SLOT="0"
KEYWORDS="-* ~amd64 x86"
IUSE=""
RESTRICT="strip"
QA_EXECSTACK="${GAMES_PREFIX_OPT:1}/bin/zinc"

DEPEND="x11-libs/libXext
	virtual/opengl
	amd64? ( app-emulation/emul-linux-x86-xlibs )"

S=${WORKDIR}/zinc

src_install() {
	exeinto "${GAMES_PREFIX_OPT}"/bin
	doexe zinc || die "doexe failed"
	dolib.so libcontrolznc.so librendererznc.so libsoundznc.so libs11player.so
	dodoc readme.txt
	prepgamesdirs
}
