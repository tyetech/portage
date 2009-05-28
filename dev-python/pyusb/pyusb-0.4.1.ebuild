# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-python/cvs-repo/gentoo-x86/dev-python/pyusb/Attic/pyusb-0.4.1.ebuild,v 1.1 2009/05/28 19:26:06 josejx Exp $

inherit distutils flag-o-matic

DESCRIPTION="USB support for Python."
HOMEPAGE="http://pyusb.sourceforge.net/"
SRC_URI="mirror://sourceforge/${PN}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~ppc"
IUSE="debug"

DEPEND="dev-libs/libusb"
RDEPEND="${DEPEND}"

src_unpack() {
	unpack ${A}
	cd "${S}"

	if ! use debug; then
		append-flags -DNDEBUG
	fi
}
