# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/kdewebdev/Attic/kdewebdev-3.3.0_alpha1.ebuild,v 1.3 2004/06/24 22:14:25 agriffis Exp $

inherit kde-dist eutils

DESCRIPTION="KDE web development - Quanta"
KEYWORDS="~x86 ~amd64"
DEPEND="~kde-base/kdebase-${PV}
	doc? ( app-doc/quanta-docs )"
