# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-python/cvs-repo/gentoo-x86/dev-python/python-xlib/Attic/python-xlib-0.12.ebuild,v 1.9 2007/04/23 15:23:32 gustavoz Exp $

inherit distutils

DESCRIPTION="A fully functional X client library for Python, written in Python."
SRC_URI="mirror://sourceforge/python-xlib/${P}.tar.gz"
HOMEPAGE="http://python-xlib.sourceforge.net/"

SLOT="0"
LICENSE="GPL-2"
KEYWORDS="x86 ~ppc alpha ia64"
IUSE=""

src_install () {
	mydoc="doc/ps/python-xlib.ps PKG-INFO TODO"
	distutils_src_install
	dohtml -r doc/html/
	doinfo doc/info/*.info*
}
