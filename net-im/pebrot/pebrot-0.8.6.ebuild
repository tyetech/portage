# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-im/cvs-repo/gentoo-x86/net-im/pebrot/Attic/pebrot-0.8.6.ebuild,v 1.2 2004/08/04 09:33:25 dholm Exp $

inherit distutils

DESCRIPTION="curses-based MSN client"
HOMEPAGE="http://pebrot.sourceforge.net"
SRC_URI="mirror://sourceforge/${PN}/${P}.tar.gz"
IUSE=""

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86 ~ppc"

DEPEND=">=dev-lang/python-2.2"

DOCS="AUTHORS README PKG-INFO INSTALL ChangeLog COPYING"

