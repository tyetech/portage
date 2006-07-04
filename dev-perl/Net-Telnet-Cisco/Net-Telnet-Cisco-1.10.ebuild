# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/Net-Telnet-Cisco/Attic/Net-Telnet-Cisco-1.10.ebuild,v 1.15 2006/07/04 14:01:20 ian Exp $

inherit perl-module

DESCRIPTION="Automate telnet sessions w/ routers&switches"
HOMEPAGE="http://www.cpan.org/modules/by-authors/id/J/JO/JOSHUA/${P}.readme"
SRC_URI="mirror://cpan/authors/id/J/JO/JOSHUA/${P}.tar.gz"

LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="alpha amd64 ~hppa ia64 ~mips ~ppc ppc64 sparc x86"
IUSE=""

DEPEND="dev-perl/Net-Telnet
	dev-perl/TermReadKey"
RDEPEND="${DEPEND}"
