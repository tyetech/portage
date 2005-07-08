# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/kdewebdev/Attic/kdewebdev-3.4.1.ebuild,v 1.6 2005/07/08 02:37:36 weeve Exp $

inherit kde-dist

DESCRIPTION="KDE web development - Quanta"

KEYWORDS="~alpha amd64 ~ia64 ppc sparc x86"
IUSE="doc tidy"

DEPEND="~kde-base/kdebase-${PV}
	doc? ( app-doc/quanta-docs )"

RDEPEND="${DEPEND}
	tidy? ( app-text/htmltidy )"
