# Copyright 1999-2004 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/Archive-Tar/Attic/Archive-Tar-1.00.ebuild,v 1.3 2004/01/19 22:06:31 esammer Exp $

inherit perl-module

S=${WORKDIR}/${P}

DESCRIPTION="A Perl module for creation and manipulation of tar files"
SRC_URI="http://www.cpan.org/modules/by-module/Archive/${P}.tar.gz"
HOMEPAGE="http://www.cpan.org/modules/by-module/Archive/${P}.readme"

SLOT="0"
LICENSE="Artistic"
KEYWORDS="x86 amd64 ppc sparc alpha"

DEPEND="dev-perl/File-Spec
		dev-perl/IO-Zlib
		dev-perl/Test-Simple"
