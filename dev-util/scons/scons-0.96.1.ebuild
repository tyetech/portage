# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-util/cvs-repo/gentoo-x86/dev-util/scons/Attic/scons-0.96.1.ebuild,v 1.9 2006/01/09 19:38:50 corsair Exp $

inherit python distutils

DESCRIPTION="Extensible python-based build utility"
SRC_URI="mirror://sourceforge/${PN}/${P}.tar.gz"
RESTRICT="nomirror"
HOMEPAGE="http://www.scons.org"

SLOT="0"
LICENSE="as-is"
KEYWORDS="alpha amd64 ~hppa ia64 ~mips ppc ~ppc-macos ppc64 sparc x86"
IUSE=""

DEPEND=">=dev-lang/python-2.0"

DOCS="RELEASE.txt CHANGES.txt LICENSE.txt"

src_install () {
	distutils_src_install
	doman scons.1 sconsign.1
}

pkg_postinst() {
	python_mod_optimize /usr/lib/scons/SCons
}

pkg_postrm() {
	python_mod_cleanup
}
