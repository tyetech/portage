# Copyright 1999-2002 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-arch/cvs-repo/gentoo-x86/app-arch/konserve/Attic/konserve-0.7.1.ebuild,v 1.1 2003/01/23 08:51:12 verwilst Exp $

inherit kde-base
need-kde 3

IUSE=""
S="${WORKDIR}/${P}"
LICENSE="GPL-2"
KEYWORDS="~x86"
DESCRIPTION="Konserve is a small backup application for the KDE 3.x environment."
SRC_URI="http://www.eikon.tum.de/~hermes/${P}.tar.bz2"
HOMEPAGE="http://www.eikon.tum.de/~hermes/konserve.html"
