# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/perl-core/cvs-repo/gentoo-x86/perl-core/Math-BigInt-FastCalc/Math-BigInt-FastCalc-0.300.0.ebuild,v 1.2 2012/09/01 12:07:47 grobian Exp $

EAPI=4

MODULE_AUTHOR=PJACKLAM
MODULE_VERSION=0.30
inherit perl-module

DESCRIPTION="Math::BigInt::Calc with some XS for more speed"

SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~mips ~ppc ~s390 ~sh ~sparc ~x86 ~ppc-aix ~ppc-macos ~x86-solaris"
IUSE=""

RDEPEND=">=virtual/perl-Math-BigInt-1.997.0
	virtual/perl-XSLoader"
DEPEND="${RDEPEND}"

SRC_TEST="do"
