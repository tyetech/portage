# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/kppp/Attic/kppp-3.5.0.ebuild,v 1.2 2005/11/29 05:04:44 weeve Exp $

KMNAME=kdenetwork
MAXKDEVER=$PV
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta eutils

DESCRIPTION="KDE: A dialer and front-end to pppd"
KEYWORDS="~amd64 ~sparc ~x86"
IUSE=""