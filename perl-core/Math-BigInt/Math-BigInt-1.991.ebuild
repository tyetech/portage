# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/perl-core/cvs-repo/gentoo-x86/perl-core/Math-BigInt/Math-BigInt-1.991.ebuild,v 1.1 2011/02/08 07:46:09 tove Exp $

EAPI=3

MODULE_AUTHOR=PJACKLAM
MODULE_VERSION=1.991
inherit perl-module eutils

DESCRIPTION="Arbitrary size floating point math package"

SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~mips ~ppc ~s390 ~sh ~sparc ~x86"
IUSE=""

RDEPEND=">=virtual/perl-Scalar-List-Utils-1.14"
DEPEND="${RDEPEND}"

PDEPEND=">=virtual/perl-Math-BigInt-FastCalc-0.24
	>=perl-core/bignum-0.22
	>=perl-core/Math-BigRat-0.22"

SRC_TEST="do"
