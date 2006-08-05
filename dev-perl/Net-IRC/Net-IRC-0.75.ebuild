# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/Net-IRC/Attic/Net-IRC-0.75.ebuild,v 1.10 2006/08/05 14:19:54 mcummings Exp $

inherit perl-module

DESCRIPTION="Perl IRC module"
SRC_URI="mirror://cpan/authors/id/J/JM/JMUHLICH/${P}.tar.gz"
HOMEPAGE="http://search.cpan.org/search?module=Net::IRC"

SLOT="0"
LICENSE="Artistic"
KEYWORDS="alpha amd64 ia64 ppc sparc x86"
IUSE=""

SRC_TEST="do"

mydoc="TODO"


DEPEND="dev-lang/perl"
RDEPEND="${DEPEND}"
