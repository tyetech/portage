# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/lilo-config/Attic/lilo-config-3.5.10.ebuild,v 1.2 2009/04/13 09:48:30 armin76 Exp $
KMNAME=kdeadmin
EAPI="1"
inherit kde-meta

DESCRIPTION="KDE LiLo kcontrol module"
KEYWORDS="~amd64 ~ppc ~x86"
IUSE="kdehiddenvisibility"
DEPEND=""

PATCHES="$FILESDIR/never-disable.diff"
