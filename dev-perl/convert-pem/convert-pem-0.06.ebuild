# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/convert-pem/Attic/convert-pem-0.06.ebuild,v 1.11 2005/04/22 12:46:17 blubb Exp $

inherit perl-module

MY_P=Convert-PEM-${PV}
S=${WORKDIR}/${MY_P}
DESCRIPTION="Read/write encrypted ASN.1 PEM files"
HOMEPAGE="http://search.cpan.org/CPAN/authors/id/B/BT/BTROTT/${MY_P}.readme"
SRC_URI="http://search.cpan.org/CPAN/authors/id/B/BT/BTROTT/${MY_P}.tar.gz"

LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="x86 ~ppc sparc alpha hppa amd64 ~mips ~ppc64"
IUSE=""

DEPEND="dev-perl/MIME-Base64
	dev-perl/Convert-ASN1
	dev-perl/Digest-MD5
	dev-perl/crypt-des-ede3"
