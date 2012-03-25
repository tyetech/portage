# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-arch/cvs-repo/gentoo-x86/app-arch/atool/Attic/atool-0.38.0.ebuild,v 1.5 2012/03/25 17:11:25 armin76 Exp $

EAPI="4"

DESCRIPTION="a script for managing file archives of various types"
HOMEPAGE="http://www.nongnu.org/atool/"
SRC_URI="http://savannah.nongnu.org/download/${PN}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 ppc x86"
IUSE=""

DEPEND="dev-lang/perl"
RDEPEND="${DEPEND}
	!app-text/adiff"
