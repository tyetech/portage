# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/Mail-SPF-Query/Mail-SPF-Query-1.999.1.ebuild,v 1.17 2010/01/10 17:04:13 grobian Exp $

MODULE_AUTHOR=JMEHNLE
MODULE_SECTION=mail-spf-query
inherit perl-module

DESCRIPTION="query Sender Policy Framework for an IP,email,helo"

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="alpha amd64 hppa ia64 ppc ppc64 sparc x86 ~amd64-linux ~x86-linux ~ppc-macos ~x86-macos"
IUSE=""

# Disabling tests for now. Ticho got them to magically work on his end,
# but bug 169285 shows the chaotic responses he got for a while.
# Enable again during a bump test, but keep disabled for general use.
# ~mcummings
#SRC_TEST="do"

DEPEND=">=dev-perl/Net-DNS-0.46
	>=dev-perl/Net-CIDR-Lite-0.15
	dev-perl/Sys-Hostname-Long
	dev-perl/URI
	dev-lang/perl"

RDEPEND="${DEPEND}
	!mail-filter/libspf2"

mydoc="TODO README sample/*"
