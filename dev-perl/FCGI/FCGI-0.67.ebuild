# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/FCGI/Attic/FCGI-0.67.ebuild,v 1.4 2004/09/03 16:49:51 pvdabeel Exp $

# this is an RT dependency

inherit perl-module

DESCRIPTION="Fast CGI"
SRC_URI="http://www.cpan.org/modules/by-authors/id/S/SK/SKIMO/${P}.tar.gz"
HOMEPAGE="http://www.cpan.org/modules/by-authors/id/S/SK/SKIMO/${P}.readme"

SRC_TEST="do"
SLOT="0"
LICENSE="Artistic | GPL-2"
KEYWORDS="~x86 ppc"
IUSE=""
