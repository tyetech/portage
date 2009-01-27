# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/blinken/Attic/blinken-4.2.0.ebuild,v 1.1 2009/01/27 16:27:10 alexxy Exp $

EAPI="2"

KMNAME="kdeedu"
inherit kde4-meta

DESCRIPTION="KDE version of the Simon Says game."
KEYWORDS="~amd64 ~x86"
IUSE="debug htmlhandbook"

DEPEND=">=kde-base/libkdeedu-${PV}:${SLOT}"
RDEPEND="${DEPEND}
	>=kde-base/knotify-${PV}:${SLOT}"

KMEXTRACTONLY="libkdeedu/kdeeduui"
