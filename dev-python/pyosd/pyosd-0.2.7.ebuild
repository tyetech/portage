# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-python/cvs-repo/gentoo-x86/dev-python/pyosd/Attic/pyosd-0.2.7.ebuild,v 1.3 2004/10/22 03:21:58 pythonhead Exp $

inherit distutils

DESCRIPTION="Bindings for XOSD"
HOMEPAGE="http://repose.cx/pyosd/"
SRC_URI="http://repose.cx/pyosd/${P}.tar.gz"
IUSE=""
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="x86"

DEPEND="virtual/python
	>=x11-libs/xosd-2.2.4"
