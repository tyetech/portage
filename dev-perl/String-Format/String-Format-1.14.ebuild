# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/String-Format/Attic/String-Format-1.14.ebuild,v 1.4 2006/08/05 23:05:25 mcummings Exp $

inherit perl-module

DESCRIPTION="sprintf-like string formatting capabilities with arbitrary format definitions"
HOMEPAGE="http://search.cpan.org/search?query=${PN}"
SRC_URI="mirror://cpan/authors/id/D/DA/DARREN/${P}.tar.gz"

LICENSE="Artistic"
SLOT="0"
KEYWORDS="~amd64 sparc ~x86"
IUSE=""

SRC_TEST="do"



DEPEND="dev-lang/perl"
RDEPEND="${DEPEND}"
