# Copyright 1999-2002 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License, v2 or later
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/Event/Attic/Event-0.85-r1.ebuild,v 1.3 2002/07/11 06:30:21 drobbins Exp $

# Inherit from perl-module.eclass

inherit perl-module

S=${WORKDIR}/${P}
CATEGORY="dev-perl"
DESCRIPTION="The Perl Event Module"
SRC_URI="http://www.cpan.org/modules/by-module/Event/${P}.tar.gz"
HOMEPAGE="http://www.cpan.org/modules/by-module/Event/${P}.readme"

mydoc="ANNOUNCE INSTALL TODO Tutorial.pdf"
