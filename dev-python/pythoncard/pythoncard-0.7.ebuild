# Copyright 1999-2004 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-python/cvs-repo/gentoo-x86/dev-python/pythoncard/Attic/pythoncard-0.7.ebuild,v 1.7 2004/05/04 12:28:14 kloeri Exp $

inherit distutils

DESCRIPTION="Cross-platform GUI construction kit for python"
HOMEPAGE="http://pythoncard.sourceforge.net/index.html"
SRC_URI="mirror://sourceforge/pythoncard/PythonCardPrototype-${PV}.tar.gz"

LICENSE="PYTHON"
SLOT="0"
KEYWORDS="x86 ~sparc"
IUSE=""

DEPEND=">=dev-python/wxPython-2.3.2.1-r2"

S=${WORKDIR}/PythonCardPrototype-${PV}

mydoc="README.txt README_StyleEditor.txt"
