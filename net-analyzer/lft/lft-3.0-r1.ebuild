# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-analyzer/cvs-repo/gentoo-x86/net-analyzer/lft/Attic/lft-3.0-r1.ebuild,v 1.5 2010/01/01 18:34:00 fauli Exp $

DESCRIPTION="Layer Four Traceroute: an advanced traceroute implementation"
HOMEPAGE="http://oppleman.com/lft/"
SRC_URI="mirror://gentoo/${P}.tar.gz"

LICENSE="VOSTROM"
SLOT="0"
KEYWORDS="amd64 ppc x86 ~amd64-linux ~x86-linux ~ppc-macos"
IUSE=""

DEPEND="net-libs/libpcap"

src_install() {
	einstall || die "einstall failed"
	dodoc CHANGELOG README TODO
}
