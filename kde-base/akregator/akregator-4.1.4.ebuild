# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/akregator/Attic/akregator-4.1.4.ebuild,v 1.1 2009/01/13 21:03:08 alexxy Exp $

EAPI="2"

KMNAME=kdepim
inherit kde4-meta

DESCRIPTION="KDE news feed aggregator."
KEYWORDS="~amd64 ~ppc ~ppc64 ~x86"
IUSE="debug htmlhandbook"

DEPEND=">=kde-base/libkdepim-${PV}:${SLOT}"
RDEPEND="${DEPEND}"

KMEXTRACTONLY="libkdepim/"
KMLOADLIBS="libkdepim"
