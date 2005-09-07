# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/lilo-config/Attic/lilo-config-3.5_alpha1.ebuild,v 1.1 2005/09/07 13:30:18 flameeyes Exp $
KMNAME=kdeadmin
MAXKDEVER=$PV
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta

DESCRIPTION="KDE LiLo kcontrol module"
KEYWORDS="~amd64"
IUSE=""
DEPEND=""

PATCHES="$FILESDIR/never-disable.diff"
