# Copyright 1999-2002 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License, v2 or later
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/Digest-HMAC/Attic/Digest-HMAC-1.01.ebuild,v 1.2 2002/07/25 04:13:25 seemant Exp $

inherit perl-module

S=${WORKDIR}/${P}
DESCRIPTION="Keyed Hashing for Message Authentication"
SRC_URI="http://www.cpan.org/authors/id/GAAS/${P}.tar.gz"
HOMEPAGE="http://search.cpan.org/doc/GAAS/${P}/README"

SLOT="0"
LICENSE="Artistic | GPL-2"
KEYWORDS="x86"

mydoc="rfc*.txt"

newdepend "dev-perl/Digest-MD5 dev-perl/Digest-SHA1"

src_compile() {
	base_src_compile
	make test || die "Tests didn't work out. Aborting!"
}
