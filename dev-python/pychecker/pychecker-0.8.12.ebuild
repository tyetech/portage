# Copyright 1999-2003 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-python/cvs-repo/gentoo-x86/dev-python/pychecker/Attic/pychecker-0.8.12.ebuild,v 1.5 2003/07/12 12:49:26 aliz Exp $

inherit distutils

DESCRIPTION="tool for finding common bugs in python source code"
SRC_URI="mirror://sourceforge/pychecker/${P}.tar.gz"
HOMEPAGE="http://pychecker.sourceforge.net/"

SLOT="0"
KEYWORDS="x86 ~sparc ~alpha"
LICENSE="BSD"

DEPEND="virtual/python"

mydoc="pycheckrc TODO"
