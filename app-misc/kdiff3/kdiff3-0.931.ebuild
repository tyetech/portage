# Copyright 1999-2003 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-misc/cvs-repo/gentoo-x86/app-misc/kdiff3/Attic/kdiff3-0.931.ebuild,v 1.4 2003/09/05 12:10:36 msterret Exp $
inherit kde-base

DESCRIPTION="KDE-based frontend to diff3"
SRC_URI="mirror://sourceforge/kdiff3/${P}.tar.gz"
HOMEPAGE="http://kdiff3.sourceforge.net/"

KEYWORDS="x86"
LICENSE="GPL-2"
SLOT="0"

need-kde 3

RDEPEND="$RDEPEND sys-apps/diffutils"
