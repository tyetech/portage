# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/games-fps/cvs-repo/gentoo-x86/games-fps/ut2004-domain2049/Attic/ut2004-domain2049-2.2.ebuild,v 1.1 2004/11/25 00:15:50 wolf31o2 Exp $

MOD_DESC="Domain2049 is a futuristic semi-realism mod"
MOD_NAME="Domain2049"
MOD_BINS=domain2049
MOD_TBZ2=${MOD_BINS}
MOD_ICON=${MOD_BINS}.xpm
inherit games games-ut2k4mod

HOMEPAGE="http://www.domain2049.com/"
SRC_URI="${MOD_TBZ2}_${PV}-english.run"

LICENSE="freedist"
