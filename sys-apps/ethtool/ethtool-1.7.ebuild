# Copyright 1999-2002 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sys-apps/cvs-repo/gentoo-x86/sys-apps/ethtool/Attic/ethtool-1.7.ebuild,v 1.2 2002/12/09 04:37:24 manson Exp $

DESCRIPTION="Utility for examining and tuning your ethernet-based network interface"

HOMEPAGE="http://sourceforge.net/projects/gkernel/"

SRC_URI="mirror://sourceforge/gkernel/${P}.tar.gz"

LICENSE="GPL2"

SLOT="0"

KEYWORDS="x86 alpha sparc  ppc"

IUSE=""

src_install () {
	einstall || die
	dodoc NEWS README INSTALL
}
