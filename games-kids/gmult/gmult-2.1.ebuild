# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/games-kids/cvs-repo/gentoo-x86/games-kids/gmult/Attic/gmult-2.1.ebuild,v 1.3 2004/06/24 22:51:23 agriffis Exp $

inherit gnome2

DESCRIPTION=" Multiplication Puzzle is a simple GTK+ 2 game that emulates the multiplication game found in Emacs."
HOMEPAGE="http://www.mterry.name/gmult/"
SRC_URI="http://www.mterry.name/gmult/${P}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="x86"
IUSE=""

DEPEND=">dev-cpp/gtkmm-2.2"
