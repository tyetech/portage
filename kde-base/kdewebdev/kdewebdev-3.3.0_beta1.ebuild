# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/kdewebdev/Attic/kdewebdev-3.3.0_beta1.ebuild,v 1.1 2004/07/08 22:32:10 caleb Exp $

inherit kde-dist eutils

DESCRIPTION="KDE web development - Quanta"
KEYWORDS="~x86 ~amd64"
DEPEND="~kde-base/kdebase-${PV}
	doc? ( app-doc/quanta-docs )"
