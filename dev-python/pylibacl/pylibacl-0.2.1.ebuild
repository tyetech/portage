# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-python/cvs-repo/gentoo-x86/dev-python/pylibacl/Attic/pylibacl-0.2.1.ebuild,v 1.7 2006/04/01 15:23:38 agriffis Exp $

inherit distutils

DESCRIPTION="Python interface to libacl"
HOMEPAGE="http://sourceforge.net/projects/pylibacl/"
SRC_URI="mirror://sourceforge/${PN}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~hppa ~ia64 ppc sparc x86"
IUSE=""

DEPEND="virtual/python
		sys-apps/acl"
RDEPEND="${DEPEND}"
