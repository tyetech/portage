# Copyright 1999-2004 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/games-server/cvs-repo/gentoo-x86/games-server/halflife-entmod/Attic/halflife-entmod-2.ebuild,v 1.4 2004/06/01 20:10:27 mr_bones_ Exp $

inherit games

DESCRIPTION="adds real-time entity control for admins"
SRC_URI="http://www.adminop.net/AdminOP/EntMod_lin.zip"
HOMEPAGE="http://www.adminop.net/"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="-* x86"
IUSE=""

RDEPEND="games-server/halflife-metamod"

S="${WORKDIR}"

src_install() {
	local dir=${GAMES_PREFIX_OPT}/halflife/addons/entmod

	dodir ${dir}
	cp -rf entmod_readme.txt sound addons/EntMod/* ${D}/${dir}/

	prepgamesdirs
}
