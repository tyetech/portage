# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-misc/cvs-repo/gentoo-x86/net-misc/knetload/Attic/knetload-1.99.ebuild,v 1.9 2004/06/24 23:51:47 agriffis Exp $

IUSE=""

inherit kde

need-kde 3

KEYWORDS="x86 sparc amd64"
LICENSE="GPL-2"
DESCRIPTION="A Network applet for KDE3"
SRC_URI="http://people.debian.org/~bab/knetload/${P}.tar.gz"
HOMEPAGE="http://people.debian.org/~bab/knetload/"

myconf="--enable-libsuffix="
