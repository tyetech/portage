# Copyright 1999-2002 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License, v2 or later
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/Chart/Attic/Chart-1.0.1.ebuild,v 1.3 2002/07/11 06:30:21 drobbins Exp $

# Inherit the perl-module.eclass functions

inherit perl-module

MY_P=${P/.3_/c-}
S=${WORKDIR}/${MY_P}
CATEGORY="dev-perl"
DESCRIPTION="The Perl Chart Module"
SRC_URI="http://www.cpan.org/modules/by-module/Chart/${MY_P}.tar.gz"
HOMEPAGE="http://www.cpan.org/modules/by-module/Chart/${MY_P}.readme"

DEPEND="${DEPEND}
	>=dev-perl/GD-1.19"

mydoc="TODO"
