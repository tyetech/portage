# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/lilo-config/Attic/lilo-config-3.5.10.ebuild,v 1.4 2009/10/06 04:08:53 josejx Exp $
KMNAME=kdeadmin
EAPI="1"
inherit kde-meta

DESCRIPTION="KDE LiLo kcontrol module"
KEYWORDS="amd64 x86"
IUSE="kdehiddenvisibility"
DEPEND=""

PATCHES="$FILESDIR/never-disable.diff"
