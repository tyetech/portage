# Copyright 1999-2003 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/crypt-dsa/Attic/crypt-dsa-0.12.ebuild,v 1.1 2003/06/23 16:38:01 mcummings Exp $

inherit perl-module

MY_P=Crypt-DSA-${PV}
S=${WORKDIR}/${MY_P}
DESCRIPTION="DSA Signatures and Key Generation"
SRC_URI="http://search.cpan.org/CPAN/authors/id/B/BT/BTROTT/${MY_P}.tar.gz"
HOMEPAGE="http://search.cpan.org/CPAN/authors/id/B/BT/BTROTT/${MY_P}.readme"

SLOT="0"
LICENSE="Artistic | GPL-2"
KEYWORDS="x86 ~alpha ~ppc ~sparc"

DEPEND="dev-perl/data-buffer
	dev-perl/convert-pem"
