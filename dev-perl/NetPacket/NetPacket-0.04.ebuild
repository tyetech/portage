# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/NetPacket/Attic/NetPacket-0.04.ebuild,v 1.1 2006/08/27 16:16:28 mcummings Exp $

inherit perl-module

DESCRIPTION="Perl NetPacket - network packets assembly/disassembly"
SRC_URI="mirror://cpan/authors/id/A/AT/ATRAK/${P}.tar.gz"
HOMEPAGE="http://www.cpan.org/modules/by-module/NetPacket/${P}.readme"
IUSE=""
SLOT="0"
LICENSE="Artistic"
KEYWORDS="~amd64 ~ia64 ~ppc ~x86"
SRC_TEST="do"


DEPEND="dev-lang/perl"
