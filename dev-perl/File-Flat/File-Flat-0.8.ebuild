# Copyright 1999-2003 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/File-Flat/Attic/File-Flat-0.8.ebuild,v 1.1 2003/06/04 00:57:53 mcummings Exp $

inherit perl-module

S=${WORKDIR}/${P}
DESCRIPTION="Implements a flat filesystem"
SRC_URI="http://www.cpan.org/modules/by-authors/id/A/AD/ADAMK/${P}.tar.gz"
HOMEPAGE="http://www.cpan.org/modules/by-authors/id/A/AD/ADAMK/${P}.readme"

SLOT="0"
LICENSE="Artistic | GPL-2"
KEYWORDS="x86 ~alpha ~arm ~hppa ~mips ~ppc ~sparc"

DEPEND="dev-perl/Class-Autouse
	dev-perl/File-Spec
	dev-perl/Class-Inspector"

