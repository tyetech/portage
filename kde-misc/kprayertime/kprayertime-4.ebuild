# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-misc/cvs-repo/gentoo-x86/kde-misc/kprayertime/Attic/kprayertime-4.ebuild,v 1.1 2009/12/21 13:05:41 ssuominen Exp $

EAPI=2
inherit kde4-base

DESCRIPTION="Islamic Prayer Times Plasmoid"
HOMEPAGE="http://kprayertime.sourceforge.net/"
SRC_URI="mirror://sourceforge/${PN}/${P/-}.src.tar.gz"

LICENSE="GPL-2"
SLOT="4"
KEYWORDS="~amd64 ~x86"
IUSE="debug"

DOCS="README"

S=${WORKDIR}/${P/-}
