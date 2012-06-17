# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/Log-TraceMessages/Attic/Log-TraceMessages-1.4.ebuild,v 1.13 2012/06/17 14:07:26 armin76 Exp $

inherit perl-module

DESCRIPTION="Logging/debugging aid"
SRC_URI="mirror://gentoo/${P}.tar.gz"
HOMEPAGE="http://search.cpan.org/~edavis/"
IUSE=""
SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="amd64 ppc x86"
SRC_TEST="do"
DEPEND=">=dev-perl/HTML-FromText-1.004
	dev-lang/perl"
