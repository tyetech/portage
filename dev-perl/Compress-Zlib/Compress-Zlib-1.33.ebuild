# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/Compress-Zlib/Attic/Compress-Zlib-1.33.ebuild,v 1.2 2004/06/25 00:14:29 agriffis Exp $

inherit perl-module

DESCRIPTION="A Zlib perl module"
HOMEPAGE="http://cpan.pair.com/modules/by-module/Compress/${P}.readme"
SRC_URI="http://cpan.pair.com/modules/by-module/Compress/${P}.tar.gz"

LICENSE="Artistic | GPL-2"
SLOT="0"
KEYWORDS="~x86 ~ppc ~sparc ~alpha ~mips ~hppa ~amd64"

SRC_TEST="do"

DEPEND="sys-libs/zlib"

mydoc="TODO"
