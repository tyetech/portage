# Copyright 1999-2002 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License, v2 or later
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/Net-SNMP/Attic/Net-SNMP-4.0.1.ebuild,v 1.3 2002/07/11 06:30:22 drobbins Exp $


inherit perl-module

S=${WORKDIR}/${P}
DESCRIPTION="A SNMP Perl Module"
SRC_URI="http://www.cpan.org/modules/by-module/Net/${P}.tar.gz"
HOMEPAGE="http://www.cpan.org/modules/by-module/Net/${P}.readme"

DEPEND="${DEPEND}
	>=dev-perl/libnet-1.0703"

SLOT="3"
