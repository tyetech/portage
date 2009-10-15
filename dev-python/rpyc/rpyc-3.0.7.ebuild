# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-python/cvs-repo/gentoo-x86/dev-python/rpyc/Attic/rpyc-3.0.7.ebuild,v 1.1 2009/10/15 16:18:50 grozin Exp $
inherit distutils
DESCRIPTION="Remote python call"
HOMEPAGE="http://${PN}.wikidot.com/"
SRC_URI="mirror://sourceforge/${PN}/${P}.tar.gz"
LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="crypt"
RDEPEND="crypt? ( dev-python/tlslite )"
