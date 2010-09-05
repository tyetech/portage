# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/blinken/Attic/blinken-4.5.1.ebuild,v 1.2 2010/09/05 23:10:22 tampakrap Exp $

EAPI="3"

KDE_HANDBOOK=1
KMNAME="kdeedu"
inherit kde4-meta

DESCRIPTION="KDE version of the Simon Says game."
KEYWORDS=""
IUSE="debug"

DEPEND="
	$(add_kdebase_dep libkdeedu)
"
RDEPEND="${DEPEND}
	$(add_kdebase_dep knotify)
"

KMEXTRACTONLY="libkdeedu/kdeeduui"
