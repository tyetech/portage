# Copyright 1999-2002 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License, v2 or later
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/MailTools/Attic/MailTools-1.44.ebuild,v 1.4 2002/07/25 04:13:26 seemant Exp $


inherit perl-module

S=${WORKDIR}/${P}
DESCRIPTION="Basic mail modules for Perl"
SRC_URI="http://www.cpan.org/modules/by-module/Mail/${P}.tar.gz"
SLOT="0"
HOMEPAGE="http://www.cpan.org/modules/by-module/Mail/${P}.readme"

SLOT="0"
DEPEND="${DEPEND}
        >=dev-perl/libnet-1.0703"
