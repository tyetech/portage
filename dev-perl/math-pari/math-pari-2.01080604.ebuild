# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/math-pari/math-pari-2.01080604.ebuild,v 1.5 2010/06/26 17:10:47 nixnut Exp $

EAPI=2

MODULE_AUTHOR=ILYAZ
MODULE_SECTION=modules
MY_PN=Math-Pari
MY_P=${MY_PN}-${PV}
inherit perl-module

PARI_VER=2.3.4

DESCRIPTION="Perl interface to PARI"
SRC_URI="${SRC_URI}
	http://pari.math.u-bordeaux.fr/pub/pari/unix/pari-${PARI_VER}.tar.gz"

LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="alpha amd64 hppa ~mips ppc sparc x86 ~amd64-linux ~x86-linux ~ppc-macos ~x86-macos"
IUSE=""

# Math::Pari requires that a copy of the pari source in a parallel
# directory to where you build it. It does not need to compile it, but
# it does need to be the same version as is installed, hence the hard
# DEPEND below
RDEPEND="~sci-mathematics/pari-${PARI_VER}"
DEPEND="${RDEPEND}"

S=${WORKDIR}/${MY_P}
S_PARI=${WORKDIR}/pari-${PARI_VER}
SRC_TEST=do

src_prepare() {
	# On 64-bit hardware, these files are needed in both the 64/ and 32/
	# directories for the testsuite to pass.
	cd "${S_PARI}"/src/test/
	for t in analyz compat ellglobalred elliptic galois graph intnum kernel \
		linear nfields number objets ploth polyser program qfbsolve rfrac \
		round4 stark sumiter trans ; do
		i="in/${t}"
		o32="32/${t}"
		o64="64/${t}"
		[ -f "$i" -a ! -f "$o32" ] && cp -al "$i" "$o32"
		[ -f "$i" -a ! -f "$o64" ] && cp -al "$i" "$o64"
	done
	perl-module_src_prepare
}

src_configure() {
	# Unfortunately the assembly routines math-pari has for SPARC do not appear
	# to be working at current.  Perl cannot test math-pari or anything that
	# pulls in the math-pari module as DynaLoader cannot load the resulting
	# .so files math-pari generates.  As such, we have to use the generic
	# non-machine specific assembly methods here.
	use sparc && myconf="${myconf} machine=none"

	perl-module_src_configure
}
