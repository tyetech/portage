# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/kruler/Attic/kruler-3.5.0_beta2.ebuild,v 1.2 2005/10/22 07:26:01 halcy0n Exp $

KMNAME=kdegraphics
MAXKDEVER=$PV
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta eutils

DESCRIPTION="A screen ruler for the K Desktop Environment"
KEYWORDS="~amd64 ~x86"
IUSE=""