# Copyright 1999-2002 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License, v2 or later
# $Header: /usr/local/ssd/gentoo-x86/output/app-misc/cvs-repo/gentoo-x86/app-misc/kdirstat/Attic/kdirstat-2.0.0.ebuild,v 1.6 2002/07/27 10:44:29 seemant Exp $

inherit kde-base

DESCRIPTION="KDirStat - nice KDE replacement to du command"
SRC_URI="http://kdirstat.sourceforge.net/download/${P}.tgz"
HOMEPAGE="http://kdirstat.sourceforge.net/"
S=${WORKDIR}/${P}


LICENSE="GPL-2 LGPL-2"
KEYWORDS="x86"

need-kde 2.2
