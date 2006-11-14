# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/lilo-config/Attic/lilo-config-3.5.5.ebuild,v 1.3 2006/11/14 00:08:55 kugelfang Exp $
KMNAME=kdeadmin
MAXKDEVER=$PV
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta

DESCRIPTION="KDE LiLo kcontrol module"
KEYWORDS="amd64 ~ppc x86"
IUSE=""
DEPEND=""

PATCHES="$FILESDIR/never-disable.diff"
