# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-wireless/cvs-repo/gentoo-x86/net-wireless/aircrack-ptw/Attic/aircrack-ptw-1.0.0.ebuild,v 1.3 2007/06/24 23:49:04 vapier Exp $

DESCRIPTION="Improved WLAN tool for breaking 802.11 WEP keys"
HOMEPAGE="http://www.cdc.informatik.tu-darmstadt.de/aircrack-ptw/"
SRC_URI="http://www.cdc.informatik.tu-darmstadt.de/${PN}/download/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm ~ppc ~x86"
IUSE=""

DEPEND="net-libs/libpcap"
RDEPEND="${DEPEND}
	net-wireless/aircrack-ng"

src_compile() {
	emake aircrack-ptw attacksim || die
}

src_install() {
	dobin aircrack-ptw attacksim || die
	dodoc README
}
