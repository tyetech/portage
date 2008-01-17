# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/kcron/Attic/kcron-4.0.0.ebuild,v 1.1 2008/01/17 23:38:05 philantrop Exp $

EAPI="1"

KMNAME=kdeadmin
inherit kde4-meta

DESCRIPTION="KDE Task Scheduler"
KEYWORDS="~amd64 ~x86"
IUSE="debug htmlhandbook"

RDEPEND="virtual/cron
	|| ( >=kde-base/knotify-${PV}:${SLOT}
		>=kde-base/kdebase-${PV}:${SLOT} )"
