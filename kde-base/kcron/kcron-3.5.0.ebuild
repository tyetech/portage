# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/kcron/Attic/kcron-3.5.0.ebuild,v 1.4 2005/12/04 10:35:56 kloeri Exp $
KMNAME=kdeadmin
MAXKDEVER=$PV
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta

DESCRIPTION="KDE Task Scheduler"
KEYWORDS="~alpha ~amd64 ~sparc ~x86"
IUSE=""

DEPEND=""
RDEPEND="virtual/cron"
