# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/kdewebdev/Attic/kdewebdev-3.4.0_rc1.ebuild,v 1.2 2005/03/01 13:15:35 weeve Exp $

inherit kde-dist

DESCRIPTION="KDE web development - Quanta"

KEYWORDS="~x86 ~amd64 ~sparc"
IUSE="doc tidy"

DEPEND="~kde-base/kdebase-${PV}
	doc? ( app-doc/quanta-docs )"

RDEPEND="${DEPEND}
	tidy? ( app-text/htmltidy )"
