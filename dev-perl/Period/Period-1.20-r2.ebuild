# Copyright 1999-2002 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/Period/Attic/Period-1.20-r2.ebuild,v 1.7 2002/10/17 16:43:15 bjb Exp $

inherit perl-module

S=${WORKDIR}/${P}
DESCRIPTION="Period is a time period Perl module."
SRC_URI="http://www.cpan.org/modules/by-module/Time/${P}.tar.gz"
HOMEPAGE="http://www.cpan.org/modules/by-module/Time/${P}.readme"

SLOT="0"
LICENSE="Artistic | GPL-2"
KEYWORDS="x86 ppc sparc sparc64 alpha"

DEPEND=${DEPEND}
