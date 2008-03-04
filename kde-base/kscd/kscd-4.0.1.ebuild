# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/kscd/Attic/kscd-4.0.1.ebuild,v 1.2 2008/03/04 05:28:57 jer Exp $

EAPI="1"

KMNAME=kdemultimedia
inherit kde4-meta

DESCRIPTION="KDE CD player"
KEYWORDS="~amd64 ~hppa ~x86"
IUSE="debug htmlhandbook"
RESTRICT="test"

DEPEND="
	>=kde-base/libkcddb-${PV}:${SLOT}
	>=kde-base/libkcompactdisc-${PV}:${SLOT}"
RDEPEND="${DEPEND}"

KMEXTRACTONLY="libkcompactdisc/"
