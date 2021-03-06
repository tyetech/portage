# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/games-emulation/cvs-repo/gentoo-x86/games-emulation/gcube/gcube-0.4-r1.ebuild,v 1.7 2011/06/10 12:27:14 tupone Exp $

EAPI=2
inherit eutils games

DESCRIPTION="Gamecube emulator"
HOMEPAGE="http://gcube.exemu.net/"
SRC_URI="http://gcube.exemu.net/downloads/${P}-src.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~ppc x86"
IUSE=""

DEPEND="virtual/opengl
	media-libs/libsdl[audio,joystick,video]
	virtual/jpeg
	sys-libs/ncurses
	sys-libs/zlib"

S=${WORKDIR}/${PV}

src_prepare() {
	sed -i \
		-e '/^CFLAGS=-g/d' Makefile.rules \
		|| die "sed failed"
	epatch "${FILESDIR}"/${P}-ldflags.patch \
		"${FILESDIR}"/${P}-underlink.patch
}

src_install() {
	local x

	dogamesbin gcmap gcube || die "dogamesbin failed"
	for x in bin2dol isopack thpview tplx ; do
		newgamesbin ${x} ${PN}-${x} || die "newgamesbin ${x} failed"
	done
	dodoc ChangeLog README
	prepgamesdirs
}
