# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/kuiviewer/Attic/kuiviewer-3.5.5.ebuild,v 1.7 2006/12/01 19:59:35 flameeyes Exp $

KMNAME=kdesdk
MAXKDEVER=$PV
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta eutils

DESCRIPTION="KUIViewer - Displays Designer's UI files"
KEYWORDS="amd64 ppc ppc64 sparc x86 ~x86-fbsd"
IUSE="kdehiddenvisibility"
