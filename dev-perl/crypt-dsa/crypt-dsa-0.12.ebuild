# Copyright 1999-2004 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/crypt-dsa/Attic/crypt-dsa-0.12.ebuild,v 1.2 2004/02/21 08:19:15 vapier Exp $

inherit perl-module

MY_P=Crypt-DSA-${PV}
S=${WORKDIR}/${MY_P}
DESCRIPTION="DSA Signatures and Key Generation"
HOMEPAGE="http://search.cpan.org/CPAN/authors/id/B/BT/BTROTT/${MY_P}.readme"
SRC_URI="http://search.cpan.org/CPAN/authors/id/B/BT/BTROTT/${MY_P}.tar.gz"

LICENSE="Artistic | GPL-2"
SLOT="0"
KEYWORDS="x86 ~ppc ~sparc ~alpha hppa"

DEPEND="dev-perl/data-buffer
	dev-perl/convert-pem"
