# Copyright 1999-2002 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License, v2 or later
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/OpenCA-CRL/Attic/OpenCA-CRL-0.7.61.ebuild,v 1.1 2002/06/24 17:27:24 lamer Exp $

inherit perl-module
S=${WORKDIR}/${P}
DESCRIPTION="The perl OpenCA::CRL Module"
SRC_URI="http://www.cpan.org/authors/id/M/MA/MADWOLF/${P}.tar.gz"
LICENSE="Artistic | GPL-2"
SLOT="0"
export OPTIMIZE="${CFLAGS}"
