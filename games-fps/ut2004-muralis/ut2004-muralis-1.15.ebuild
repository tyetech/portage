# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/games-fps/cvs-repo/gentoo-x86/games-fps/ut2004-muralis/ut2004-muralis-1.15.ebuild,v 1.4 2009/10/08 20:03:40 nyhm Exp $

EAPI=2

MOD_DESC="third-person hand-to-hand single/multiplayer mod"
MOD_NAME="Muralis"
MOD_DIR="muralis"

inherit games games-mods

HOMEPAGE="http://www.ascensiongames.com/"
SRC_URI="muralis-v${PV}-zip.zip"

LICENSE="freedist"
KEYWORDS="amd64 x86"
IUSE="dedicated opengl"
RESTRICT="fetch"

pkg_nofetch() {
	elog "Please download ${SRC_URI} from:"
	elog "http://www.atomicgamer.com/file.php?id=42750"
	elog "and move it to ${DISTDIR}"
}

src_unpack() {
	unzip "${DISTDIR}"/${A} # unpack fails
}

src_prepare() {
	mv -f Muralis ${MOD_DIR} || die
}
