# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/kcontrol/kcontrol-4.8.5.ebuild,v 1.4 2012/09/03 12:20:57 scarabeus Exp $

EAPI=4

KDE_HANDBOOK="optional"
KMNAME="kde-runtime"
inherit kde4-meta

DESCRIPTION="The KDE Control Center"
KEYWORDS="amd64 ~arm ppc ~ppc64 x86 ~x86-fbsd ~amd64-linux ~x86-linux"
IUSE="debug"

RDEPEND="
	$(add_kdebase_dep kdnssd)
	$(add_kdebase_dep khotkeys)
"
