# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-misc/cvs-repo/gentoo-x86/kde-misc/kalbum/Attic/kalbum-0.8.0.ebuild,v 1.5 2009/10/12 08:52:07 abcd Exp $

inherit kde

IUSE=""
DESCRIPTION="A photo album generator for KDE 3.x"
SRC_URI="http://www.paldandy.com/kalbum/data/${P}/${P}.tar.bz2
	mirror://gentoo/kde-admindir-3.5.5.tar.bz2"
HOMEPAGE="http://www.paldandy.com/kalbum/"
LICENSE="GPL-2"
KEYWORDS="amd64 ppc sparc x86"

need-kde 3
