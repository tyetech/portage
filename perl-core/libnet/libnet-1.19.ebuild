# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/perl-core/cvs-repo/gentoo-x86/perl-core/libnet/Attic/libnet-1.19.ebuild,v 1.2 2006/01/15 01:39:28 vapier Exp $

inherit perl-module

DESCRIPTION="A URI Perl Module"
HOMEPAGE="http://search.cpan.org/~gbarr/${P}/"
SRC_URI="mirror://cpan/authors/id/G/GB/GBARR/${P}.tar.gz"

LICENSE="Artistic"
SLOT="0"
KEYWORDS="alpha amd64 arm hppa ia64 mips ppc ppc64 s390 sh sparc x86"
IUSE="sasl"

DEPEND="sasl? ( dev-perl/Authen-SASL )"

src_compile() {
	cp ${O}/files/libnet.cfg .
	perl-module_src_compile
}
