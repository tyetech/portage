# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/klettres/Attic/klettres-4.5.1.ebuild,v 1.1 2010/09/06 00:42:08 tampakrap Exp $

EAPI="3"

KDE_HANDBOOK=1
KMNAME="kdeedu"
inherit kde4-meta

DESCRIPTION="KDE: KLettres helps a very young child or an adult learning "
KEYWORDS=""
IUSE="debug"

RDEPEND="
	$(add_kdebase_dep knotify)
"
