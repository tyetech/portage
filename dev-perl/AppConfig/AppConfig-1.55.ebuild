# Copyright 1999-2004 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/AppConfig/Attic/AppConfig-1.55.ebuild,v 1.4 2004/01/21 13:58:01 gustavoz Exp $

inherit perl-module

S=${WORKDIR}/${P}
DESCRIPTION="Application config (from ARGV, file, ...)"
SRC_URI="http://www.cpan.org/authors/id/ABW/${P}.tar.gz"
HOMEPAGE="http://search.cpan.org/author/ABW/AppConfig-1.55/"

SLOT="0"
LICENSE="Artistic | GPL-2"
KEYWORDS="x86 amd64 sparc ~alpha ~ppc"

DEPEND="dev-perl/Test-Simple"

