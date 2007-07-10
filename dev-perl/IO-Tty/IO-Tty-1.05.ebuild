# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/IO-Tty/Attic/IO-Tty-1.05.ebuild,v 1.7 2007/07/10 23:33:29 mr_bones_ Exp $

inherit perl-module

DESCRIPTION="IO::Tty and IO::Pty modules for Perl"
HOMEPAGE="http://search.cpan.org/~rgiersig/${P}/"
SRC_URI="mirror://cpan/authors/id/R/RG/RGIERSIG/${P}.tar.gz"

SLOT="0"
LICENSE="Artistic"
KEYWORDS="~alpha amd64 arm ~ia64 ppc s390 sh sparc ~x86"
IUSE=""

mymake="/usr"

DEPEND="dev-lang/perl"
