# Copyright 1999-2003 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-python/cvs-repo/gentoo-x86/dev-python/pychecker/Attic/pychecker-0.8.12.ebuild,v 1.3 2003/06/21 22:30:24 drobbins Exp $

inherit distutils

DESCRIPTION="tool for finding common bugs in python source code"
SRC_URI="mirror://sourceforge/pychecker/${P}.tar.gz"
HOMEPAGE="http://pychecker.sourceforge.net/"

SLOT="0"
KEYWORDS="x86 amd64 ~sparc ~alpha"
LICENSE="BSD"

DEPEND="virtual/python"

mydoc="pycheckrc TODO"
