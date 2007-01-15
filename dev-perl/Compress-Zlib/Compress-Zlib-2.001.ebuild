# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/Compress-Zlib/Attic/Compress-Zlib-2.001.ebuild,v 1.12 2007/01/15 15:09:40 mcummings Exp $

inherit perl-module

DESCRIPTION="A Zlib perl module"
HOMEPAGE="http://search.cpan.org/~pmqs/"
SRC_URI="mirror://cpan/modules/by-module/Compress/${P}.tar.gz"

LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="amd64 arm ~hppa ia64 m68k ~mips ppc ppc64 s390 sh sparc x86"
IUSE=""

DEPEND="sys-libs/zlib
	dev-perl/Compress-Raw-Zlib
	dev-perl/IO-Compress-Base
	dev-perl/IO-Compress-Zlib
	dev-lang/perl"

SRC_TEST="do"

mydoc="TODO"
