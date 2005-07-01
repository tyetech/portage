# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/kruler/Attic/kruler-3.4.1.ebuild,v 1.4 2005/07/01 12:05:42 corsair Exp $

KMNAME=kdegraphics
MAXKDEVER=$PV
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta eutils

DESCRIPTION="A screen ruler for the K Desktop Environment"
KEYWORDS="amd64 ~ppc ppc64 ~sparc x86"
IUSE=""