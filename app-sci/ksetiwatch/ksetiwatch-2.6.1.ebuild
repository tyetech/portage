# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-sci/cvs-repo/gentoo-x86/app-sci/ksetiwatch/Attic/ksetiwatch-2.6.1.ebuild,v 1.4 2004/09/18 15:27:53 weeve Exp $

inherit kde

DESCRIPTION="A monitoring tool for SETI@home, similar to SETIWatch for Windows"
HOMEPAGE="http://ksetiwatch.sourceforge.net"
SRC_URI="mirror://sourceforge/ksetiwatch/${P}.tar.bz2"

SLOT="0"
LICENSE="GPL-2"
KEYWORDS="~x86 ~ppc ~sparc"
IUSE=""

DEPEND="app-sci/setiathome"
need-kde 3
