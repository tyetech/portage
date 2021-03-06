# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-libs/cvs-repo/gentoo-x86/net-libs/libzrtpcpp/libzrtpcpp-1.3.0.ebuild,v 1.4 2012/10/14 00:17:19 chithanh Exp $

DESCRIPTION="GNU RTP stack for the zrtp protocol developed by Phil Zimmermann"
HOMEPAGE="http://www.gnutelephony.org/index.php/GNU_ZRTP"
SRC_URI="mirror://gnu/ccrtp/${P}.tar.gz"
KEYWORDS="~amd64 ~ppc ~ppc64 ~x86"
LICENSE="GPL-2"
IUSE=""
SLOT="0"

RDEPEND=">=net-libs/ccrtp-1.5.0
	<net-libs/ccrtp-2
	>=dev-cpp/commoncpp2-1.5.1
	|| ( dev-libs/libgcrypt
		>=dev-libs/openssl-0.9.8 )"
DEPEND="${RDEPEND}
	virtual/pkgconfig"

src_install() {
	emake DESTDIR="${D}" install || die
	dodoc README AUTHORS
}
