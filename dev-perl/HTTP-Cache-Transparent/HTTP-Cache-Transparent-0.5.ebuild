# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/HTTP-Cache-Transparent/Attic/HTTP-Cache-Transparent-0.5.ebuild,v 1.4 2005/05/16 19:07:56 gustavoz Exp $

inherit perl-module

DESCRIPTION="Cache the result of http get-requests persistently."
HOMEPAGE="http://search.cpan.org/~mattiash/${P}"
SRC_URI="mirror://cpan/authors/id/M/MA/MATTIASH/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="x86 ~amd64 ~ppc ~sparc"
IUSE=""

SRC_TEST="do"

DEPEND="dev-perl/libwww-perl
	dev-perl/Digest-MD5
	dev-perl/Storable"
