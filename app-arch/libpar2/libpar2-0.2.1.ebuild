# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-arch/cvs-repo/gentoo-x86/app-arch/libpar2/libpar2-0.2.1.ebuild,v 1.2 2012/09/30 18:23:58 armin76 Exp $

EAPI=4

inherit autotools-utils

DESCRIPTION="A library for par2, extracted from par2cmdline"
HOMEPAGE="http://parchive.sourceforge.net/"
SRC_URI="https://launchpad.net/${PN}/${PV:0:3}/${PV}/+download/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~x86"
IUSE="static-libs"

RDEPEND="dev-libs/libsigc++:2"
DEPEND="${RDEPEND}
	virtual/pkgconfig"

DOCS=( AUTHORS ChangeLog README )

# Needed to install all headers properly (bug #391815)
AUTOTOOLS_IN_SOURCE_BUILD=1
