# Copyright 1999-2004 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-crypt/cvs-repo/gentoo-x86/app-crypt/kgpg/Attic/kgpg-0.9.5.ebuild,v 1.7 2004/03/13 21:50:28 mr_bones_ Exp $

inherit kde-base
need-kde 3

IUSE=""
DESCRIPTION="KDE integration for GnuPG"
SRC_URI="http://devel-home.kde.org/~kgpg/src/${P}.tar.gz"
HOMEPAGE="http://devel-home.kde.org/~kgpg/index.html"
LICENSE="GPL-2"
KEYWORDS="x86 ppc"

newdepend "app-crypt/gnupg"
