# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/kscd/Attic/kscd-4.1.4.ebuild,v 1.1 2009/01/13 22:45:47 alexxy Exp $

EAPI="2"

KMNAME=kdemultimedia
inherit kde4-meta

DESCRIPTION="KDE CD player"
KEYWORDS="~amd64 ~ppc ~ppc64 ~x86"
IUSE="debug htmlhandbook"

DEPEND="
	>=kde-base/libkcddb-${PV}:${SLOT}
	>=kde-base/libkcompactdisc-${PV}:${SLOT}"
RDEPEND="${DEPEND}"

KMEXTRACTONLY="libkcompactdisc/"
