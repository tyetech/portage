# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-cpp/cvs-repo/gentoo-x86/dev-cpp/tclap/tclap-1.2.0.ebuild,v 1.2 2012/07/25 17:08:00 pacho Exp $

EAPI=4
inherit eutils

DESCRIPTION="Simple templatized C++ library for parsing command line arguments."
HOMEPAGE="http://tclap.sourceforge.net"
SRC_URI="mirror://sourceforge/${PN}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~x86"
IUSE="doc"

RDEPEND=""
DEPEND="doc? ( app-doc/doxygen )"

src_configure() {
	econf $(use_enable doc doxygen)
}

src_install() {
	emake DESTDIR="${D}" docdir="/usr/share/doc/${PF}/html" install
}
