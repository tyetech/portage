# Copyright 1999-2004 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/games-board/cvs-repo/gentoo-x86/games-board/slibo/Attic/slibo-0.4.4.ebuild,v 1.3 2004/02/29 10:29:26 vapier Exp $

inherit kde
need-kde 3

DESCRIPTION="A comfortable replacement for the xboard chess interface"
HOMEPAGE="http://slibo.sourceforge.net/"
SRC_URI="mirror://sourceforge/slibo/${P}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="x86"

DEPEND="dev-db/sqlite"
