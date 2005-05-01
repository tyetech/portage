# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-misc/cvs-repo/gentoo-x86/kde-misc/kdiff3/Attic/kdiff3-0.9.88.ebuild,v 1.6 2005/05/01 18:20:38 hansmi Exp $

inherit kde

DESCRIPTION="KDE-based frontend to diff3"
HOMEPAGE="http://kdiff3.sourceforge.net/"
SRC_URI="mirror://sourceforge/kdiff3/${P}.tar.gz"

SLOT="0"
LICENSE="GPL-2"
KEYWORDS="x86 amd64 ppc sparc ppc64"
IUSE=""

RDEPEND="sys-apps/diffutils"

need-kde 3
