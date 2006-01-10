# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/games-emulation/cvs-repo/gentoo-x86/games-emulation/infones/Attic/infones-0.97.ebuild,v 1.1 2006/01/10 01:29:52 vapier Exp $

inherit games

MY_P="InfoNES${PV//.}J_Src"
DESCRIPTION="A fast and portable NES emulator"
HOMEPAGE="http://www.geocities.co.jp/SiliconValley/5604/infones/"
SRC_URI="http://prdownloads.sourceforge.jp/infones/16325/${MY_P}.zip"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 ppc x86"
IUSE=""

RDEPEND="=x11-libs/gtk+-1.2*
	sys-libs/zlib"
DEPEND="${RDEPEND}
	app-arch/unzip"

S=${WORKDIR}/${MY_P}/linux

src_unpack() {
	unpack ${A}
	cd "${S}"
	sed -i \
		-e "s:-O6:${CFLAGS}:" \
		-e "/^LDFILGS/s:=:=${LDFLAGS} :" \
		Makefile \
		|| die "sed Makefile failed"
}

src_install() {
	dogamesbin InfoNES || die "dogamesbin failed"
	dohtml ../doc/readme.html
	prepgamesdirs
}
