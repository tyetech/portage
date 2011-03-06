# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-analyzer/cvs-repo/gentoo-x86/net-analyzer/tcptrack/Attic/tcptrack-1.4.0.ebuild,v 1.1 2011/03/06 20:13:36 radhermit Exp $

EAPI=4

DESCRIPTION="Passive per-connection tcp bandwidth monitor"
HOMEPAGE="http://www.rhythm.cx/~steve/devel/tcptrack/"
SRC_URI="http://www.rhythm.cx/~steve/devel/tcptrack/release/${PV}/source/${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~x86"
IUSE=""

DEPEND="net-libs/libpcap
	sys-libs/ncurses"
RDEPEND="${DEPEND}"
