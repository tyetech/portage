# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-python/cvs-repo/gentoo-x86/dev-python/pyosd/Attic/pyosd-0.2.9.ebuild,v 1.3 2004/06/25 01:41:59 agriffis Exp $

inherit distutils

DESCRIPTION="PyOSD is a python module for displaying text on your X display, much like the 'On Screen Displays' used on TVs and some monitors."
HOMEPAGE="http://repose.cx/pyosd/"
SRC_URI="http://repose.cx/pyosd/${P}.tar.gz"
IUSE=""
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86 ~ppc"

DEPEND="virtual/python
	>=x11-libs/xosd-2.2.4"

