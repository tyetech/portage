# Copyright 1999-2003 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/OpenCA-REQ/Attic/OpenCA-REQ-0.7.35.ebuild,v 1.10 2003/02/13 11:16:37 vapier Exp $

inherit perl-module
S=${WORKDIR}/${P}
DESCRIPTION="The perl OpenCA::REQ Module"
SRC_URI="http://www.cpan.org/authors/id/M/MA/MADWOLF/${P}.tar.gz"
HOMEPAGE="http://www.cpan.org/authors/id/M/MA/MADWOLF/${P}.readme"

SLOT="0"
LICENSE="Artistic | GPL-2"
KEYWORDS="x86 ppc sparc alpha"

export OPTIMIZE="${CFLAGS}"
