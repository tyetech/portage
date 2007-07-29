# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/Encode-Detect/Attic/Encode-Detect-1.00.ebuild,v 1.1 2007/07/29 10:04:39 ian Exp $

inherit perl-module

DESCRIPTION="Encode::Detect - An Encode::Encoding subclass that detects the encoding of data"
HOMEPAGE="http://search.cpan.org/~jgmyers/${P}/"
SRC_URI="mirror://cpan/authors/id/J/JG/JGMYERS/${P}.tar.gz"

LICENSE="MPL-1.1"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="dev-lang/perl
	dev-perl/ExtUtils-CBuilder"
