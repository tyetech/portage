# Copyright 1999-2004 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-office/cvs-repo/gentoo-x86/app-office/kmymoney2/Attic/kmymoney2-0.5.1.ebuild,v 1.6 2004/04/26 05:44:20 centic Exp $

inherit kde-base
need-kde 3

IUSE=""
LICENSE="GPL-2"
KEYWORDS="x86 ~sparc"
DESCRIPTION="Personal Finances Manager for KDE"
SRC_URI="mirror://sourceforge/${PN}/${P}.tar.bz2"
HOMEPAGE="http://kmymoney2.sourceforge.net"

DEPEND="dev-libs/libxml2
	dev-cpp/libxmlpp"

src_unpack() {
	kde_src_unpack
}
