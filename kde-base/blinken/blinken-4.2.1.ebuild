# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/blinken/Attic/blinken-4.2.1.ebuild,v 1.2 2009/03/08 13:08:52 scarabeus Exp $

EAPI="2"

KMNAME="kdeedu"
inherit kde4-meta

DESCRIPTION="KDE version of the Simon Says game."
KEYWORDS="~amd64 ~ppc ~ppc64 ~x86"
IUSE="debug"

DEPEND="
	>=kde-base/libkdeedu-${PV}:${SLOT}[kdeprefix=]
"
RDEPEND="${DEPEND}
	>=kde-base/knotify-${PV}:${SLOT}[kdeprefix=]
"

KMEXTRACTONLY="libkdeedu/kdeeduui"
