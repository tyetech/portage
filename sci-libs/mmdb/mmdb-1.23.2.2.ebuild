# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sci-libs/cvs-repo/gentoo-x86/sci-libs/mmdb/mmdb-1.23.2.2.ebuild,v 1.5 2011/08/01 20:25:28 maekke Exp $

EAPI=4

inherit autotools-utils

DESCRIPTION="The Coordinate Library, designed to assist CCP4 developers in working with coordinate files"
HOMEPAGE="http://launchpad.net/mmdb/"
SRC_URI="http://launchpad.net/mmdb/1.23/${PV}/+download/${P}.tar.gz"

LICENSE="GPL-2 LGPL-3"
SLOT="0"
KEYWORDS="amd64 ~ppc x86 ~amd64-linux ~x86-linux"
IUSE=""

DEPEND="!<sci-libs/ccp4-libs-6.1.3"
RDEPEND=""

PATCHES=(
	"${FILESDIR}"/${PV}-pkg-config.patch
	)
