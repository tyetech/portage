# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/kweather/Attic/kweather-3.4.1-r1.ebuild,v 1.5 2005/07/08 04:45:10 weeve Exp $

KMNAME=kdetoys
MAXKDEVER=$PV
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta

DESCRIPTION="KDE weather status display"
KEYWORDS="amd64 ppc ppc64 sparc x86"
IUSE=""
DEPEND=""
PATCHES="${FILESDIR}/kweather-3.4.1-fix-icon-size.diff"