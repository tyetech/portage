# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/kdcop/Attic/kdcop-3.5.0.ebuild,v 1.3 2005/12/04 10:27:47 kloeri Exp $

KMNAME=kdebase
MAXKDEVER=$PV
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta eutils

DESCRIPTION="KDE: graphical DCOP browser/client"
KEYWORDS="~alpha ~amd64 ~sparc ~x86"
IUSE=""
KMNODOCS="true"

