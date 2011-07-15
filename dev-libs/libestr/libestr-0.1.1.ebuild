# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-libs/cvs-repo/gentoo-x86/dev-libs/libestr/Attic/libestr-0.1.1.ebuild,v 1.1 2011/07/15 08:46:52 hwoarang Exp $

EAPI=4

DESCRIPTION="Library for some string essentials"
HOMEPAGE="http://libestr.adiscon.com/"
SRC_URI="http://doc.libestr.adiscon.com/download/${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="debug"

DEPEND=""
RDEPEND="${DEPEND}"

src_configure()	{
	econf $(use_enable debug)
}

src_install()	{
	emake install DESTDIR="${D}"
	find "${D}" -name "*.la" -delete || die
}
