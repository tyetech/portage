# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-libs/cvs-repo/gentoo-x86/media-libs/sdl-net/Attic/sdl-net-1.2.5.ebuild,v 1.6 2004/06/24 23:22:03 agriffis Exp $

MY_P=${P/sdl-/SDL_}
S=${WORKDIR}/${MY_P}
DESCRIPTION="Simple Direct Media Layer Network Support Library"
SRC_URI="http://www.libsdl.org/projects/SDL_net/release/${MY_P}.tar.gz"
HOMEPAGE="http://www.libsdl.org/projects/SDL_net/index.html"

KEYWORDS="x86 ~ppc sparc ~alpha amd64"
LICENSE="LGPL-2"
SLOT="0"

DEPEND=">=media-libs/libsdl-1.2.5"

src_install() {
	einstall || die
	preplib /usr
	dodoc CHANGES README
}
