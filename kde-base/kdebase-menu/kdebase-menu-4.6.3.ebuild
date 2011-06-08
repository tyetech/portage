# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/kdebase-menu/Attic/kdebase-menu-4.6.3.ebuild,v 1.2 2011/06/08 23:15:45 tomka Exp $

EAPI=4

KMNAME="kdebase-runtime"
KMMODULE="kde-menu"
inherit kde4-meta

DESCRIPTION="KDE Menu query tool."
KEYWORDS="~amd64 ~arm ~ppc ~ppc64 x86 ~x86-fbsd ~amd64-linux ~x86-linux"
IUSE="debug"

add_blocker kde-menu
