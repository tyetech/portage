# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/games-action/cvs-repo/gentoo-x86/games-action/snipes/Attic/snipes-1.0.3.ebuild,v 1.1 2009/01/30 02:19:49 mr_bones_ Exp $

inherit toolchain-funcs games

DESCRIPTION="2D scrolling shooter, resembles the old DOS game of same name"
HOMEPAGE="http://cyp.github.com/snipes/"
SRC_URI="http://cyp.github.com/snipes/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~x86"
IUSE=""

DEPEND="media-libs/libsdl"

src_install() {
	dogamesbin snipes || die "dogamesbin failed"
	doman snipes.6
	dodoc ChangeLog
	prepgamesdirs
}
