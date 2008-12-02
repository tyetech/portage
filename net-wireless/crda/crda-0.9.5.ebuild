# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-wireless/cvs-repo/gentoo-x86/net-wireless/crda/Attic/crda-0.9.5.ebuild,v 1.2 2008/12/02 11:47:04 armin76 Exp $

inherit toolchain-funcs

DESCRIPTION="Central Regulatory Domain Agent for wireless networks."
HOMEPAGE="http://wireless.kernel.org/en/developers/Regulatory"
SRC_URI="http://wireless.kernel.org/download/crda/${P}.tar.bz2"
LICENSE="as-is"
SLOT="0"

KEYWORDS="~amd64 ~x86"
IUSE=""
DEPEND="dev-libs/libgcrypt
	dev-libs/libnl
	dev-python/m2crypto
	net-wireless/wireless-regdb"
RDEPEND="${DEPEND}"

src_compile() {
	emake CC="$(tc-getCC)" || die "Compilation failed"
}

src_install() {
	emake DESTDIR="${D}" install || die "emake install failed"
}
