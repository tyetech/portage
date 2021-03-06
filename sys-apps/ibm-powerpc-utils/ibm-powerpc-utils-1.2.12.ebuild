# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sys-apps/cvs-repo/gentoo-x86/sys-apps/ibm-powerpc-utils/ibm-powerpc-utils-1.2.12.ebuild,v 1.1 2012/04/22 13:24:05 ranger Exp $

inherit eutils

MY_P="powerpc-utils-${PV}"

DESCRIPTION="This package provides utilities for the maintainance
of the IBM and Apple powerpc platforms."
HOMEPAGE="http://sourceforge.net/projects/powerpc-utils"
SRC_URI="mirror://sourceforge/powerpc-utils/${MY_P}.tar.gz"

S="${WORKDIR}/${MY_P}"

SLOT="0"
LICENSE="IBM"
KEYWORDS="~ppc ~ppc64"
IUSE=""
DEPEND=">=sys-libs/librtas-1.3.5
		sys-devel/bc"

src_unpack() {
	unpack ${A}
}

src_install() {
	make DESTDIR="${D}" install || die "Something went wrong"

}
