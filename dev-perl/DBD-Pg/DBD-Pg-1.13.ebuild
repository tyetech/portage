# Copyright 1999-2002 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License, v2 or later
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/DBD-Pg/Attic/DBD-Pg-1.13.ebuild,v 1.3 2002/07/25 04:13:23 seemant Exp $

inherit perl-module

S=${WORKDIR}/${P}
DESCRIPTION="The Perl DBD::Pg Module"
SRC_URI="http://www.cpan.org/authors/id/JBAKER/${P}.tar.gz"
HOMEPAGE="http://www.cpan.org/authors/id/JBAKER/${P}.readme"

SLOT="0"
LICENSE="Artistic | GPL-2"

DEPEND="${DEPEND}
	dev-perl/DBI
	dev-db/postgresql"

# env variables for compilation:
export POSTGRES_INCLUDE=/usr/include/postgresql/
export POSTGRES_LIB=/usr/lib/postgresql/

mydoc="Changes README"
