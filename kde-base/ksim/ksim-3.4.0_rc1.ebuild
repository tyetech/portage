# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/ksim/Attic/ksim-3.4.0_rc1.ebuild,v 1.2 2005/03/07 16:38:08 cryos Exp $

KMNAME=kdeutils
MAXKDEVER=$PV
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta eutils

DESCRIPTION="KDE System Monitor applets"
KEYWORDS="~x86 ~amd64"
IUSE="snmp"

DEPEND="snmp? ( net-analyzer/net-snmp )"

