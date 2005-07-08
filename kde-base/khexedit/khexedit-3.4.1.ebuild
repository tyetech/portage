# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/khexedit/Attic/khexedit-3.4.1.ebuild,v 1.6 2005/07/08 04:53:45 weeve Exp $

KMNAME=kdeutils
MAXKDEVER=$PV
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta eutils

DESCRIPTION="KDE hex editor"
KEYWORDS="amd64 ppc ppc64 sparc x86"
IUSE=""

PATCHES="$FILESDIR/khexedit-configure-magic.diff"