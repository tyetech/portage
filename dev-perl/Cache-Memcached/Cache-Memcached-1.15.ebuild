# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/Cache-Memcached/Attic/Cache-Memcached-1.15.ebuild,v 1.2 2005/12/17 21:37:56 corsair Exp $

inherit perl-module

DESCRIPTION="Perl API for memcached"

HOMEPAGE="http://www.danga.com/memcached/"
SRC_URI="mirror://cpan/authors/id/B/BR/BRADFITZ/${P}.tar.gz"

LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~hppa ~ia64 ~mips ~ppc ~ppc64 ~sparc ~x86"
IUSE=""

DEPEND="!ia64? ( dev-perl/string-crc32 )"
RDEPEND="${DEPEND}"
