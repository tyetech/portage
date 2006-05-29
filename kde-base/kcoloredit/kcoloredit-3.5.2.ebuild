# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/kcoloredit/Attic/kcoloredit-3.5.2.ebuild,v 1.7 2006/05/29 21:38:40 weeve Exp $

KMNAME=kdegraphics
MAXKDEVER=$PV
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta eutils

DESCRIPTION="KDE color selector/editor"
KEYWORDS="~alpha amd64 ~ia64 ~ppc ppc64 sparc x86 ~x86-fbsd"
IUSE=""