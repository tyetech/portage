# Copyright 1999-2002 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License, v2 or later
# $Header: /usr/local/ssd/gentoo-x86/output/media-libs/cvs-repo/gentoo-x86/media-libs/sdl-net/Attic/sdl-net-1.2.4.ebuild,v 1.2 2002/07/11 06:30:39 drobbins Exp $

MY_P=${P/sdl-/SDL_}
S=${WORKDIR}/${MY_P}
DESCRIPTION="Simple Direct Media Layer Network Support Library"
SRC_URI="http://www.libsdl.org/projects/SDL_net/release/${MY_P}.tar.gz"
HOMEPAGE="http://www.libsdl.org/projects/SDL_net/index.html"

DEPEND="virtual/glibc
	>=media-libs/libsdl-1.2.4"

src_install() {
	einstall || die
	preplib /usr
	dodoc CHANGES COPYING README	
}
