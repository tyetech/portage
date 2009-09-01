# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/kdemultimedia-meta/Attic/kdemultimedia-meta-4.3.1.ebuild,v 1.1 2009/09/01 15:12:40 tampakrap Exp $

EAPI="2"
inherit kde4-functions

DESCRIPTION="kdemultimedia - merge this to pull in all kdemultimedia-derived packages"
HOMEPAGE="http://www.kde.org/"

LICENSE="GPL-2"
SLOT="4.3"
KEYWORDS="~alpha ~amd64 ~hppa ~ia64 ~ppc ~ppc64 ~x86"
IUSE="kdeprefix"

RDEPEND="
	>=kde-base/dragonplayer-${PV}:${SLOT}[kdeprefix=]
	>=kde-base/juk-${PV}:${SLOT}[kdeprefix=]
	>=kde-base/kdemultimedia-kioslaves-${PV}:${SLOT}[kdeprefix=]
	>=kde-base/kmix-${PV}:${SLOT}[kdeprefix=]
	>=kde-base/kscd-${PV}:${SLOT}[kdeprefix=]
	>=kde-base/libkcddb-${PV}:${SLOT}[kdeprefix=]
	>=kde-base/libkcompactdisc-${PV}:${SLOT}[kdeprefix=]
	>=kde-base/mplayerthumbs-${PV}:${SLOT}[kdeprefix=]
	$(block_other_slots)
"
