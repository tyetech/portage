# Copyright 1999-2002 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License, v2 or later
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/DBD-mysql/Attic/DBD-mysql-2.1004-r2.ebuild,v 1.3 2002/07/11 06:30:21 drobbins Exp $

# Inherit the perl-module.eclass functions

inherit perl-module

S=${WORKDIR}/${P}
DESCRIPTION="The Perl DBD:mysql Module"
SRC_URI="http://www.cpan.org/authors/id/JWIED/${P}.tar.gz"

DEPEND="${DEPEND} dev-perl/DBI dev-db/mysql"
LICENSE="Artistic | GPL-2"
SLOT="0"

mydoc="ToDo"
