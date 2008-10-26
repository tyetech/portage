# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-misc/cvs-repo/gentoo-x86/net-misc/bti/Attic/bti-007.ebuild,v 1.1 2008/10/26 17:22:26 gregkh Exp $

DESCRIPTION="A command line twitter/identi.ca client"
HOMEPAGE="http://www.kernel.org/pub/linux/kernel/people/gregkh/bti/"
SRC_URI="http://www.kernel.org/pub/linux/kernel/people/gregkh/bti/${P}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="net-misc/curl"
RDEPEND="${DEPEND}"

src_compile() {
	emake || die "emake failed"
}

src_install() {
	doman bti.1
	dobin bti
	dodoc bti.example README RELEASE-NOTES
}
