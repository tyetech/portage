# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/kdepasswd/Attic/kdepasswd-4.8.1.ebuild,v 1.4 2012/04/18 20:51:22 maekke Exp $

EAPI=4

KDE_HANDBOOK="optional"
KMNAME="kde-baseapps"
inherit kde4-meta

DESCRIPTION="KDE GUI for passwd"
KEYWORDS="amd64 ~arm x86 ~amd64-linux ~x86-linux"
IUSE="debug"

DEPEND="
	$(add_kdebase_dep libkonq)
"
RDEPEND="${DEPEND}
	$(add_kdebase_dep kdesu)
"

KMLOADLIBS="libkonq"
