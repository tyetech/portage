# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/DCOP-Amarok-Player/Attic/DCOP-Amarok-Player-0.036.ebuild,v 1.1 2006/10/24 00:36:08 mcummings Exp $

inherit perl-module

DESCRIPTION="Perl interface to Amarok via dcop"
SRC_URI="mirror://cpan/authors/id/J/JC/JCMULLER/${P}.tar.gz"
HOMEPAGE="http://www.cpan.org/modules/by-authors/id/J/JC/JCMULLER/${P}.readme"

RDEPEND="dev-perl/DCOP-Amarok"

IUSE=""

SLOT="0"
LICENSE="Artistic"
KEYWORDS="~amd64 ~x86"

#Tests disabled - comment back if you are testing and are running an active KDE
# session
# ~mcummings
#SRC_TEST="do"
