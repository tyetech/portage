# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-python/cvs-repo/gentoo-x86/dev-python/rlcompleter2/Attic/rlcompleter2-0.95.ebuild,v 1.9 2004/06/25 01:49:10 agriffis Exp $

inherit distutils

DESCRIPTION="Python command line completion."
HOMEPAGE="http://codespeak.net/rlcompleter2/"
SRC_URI="http://codespeak.net/rlcompleter2/download/${P}.tar.gz"

LICENSE="PSF-2.2"
SLOT="0"
KEYWORDS="x86 ~ppc"
IUSE=""

DOCS="PKG-INFO"

pkg_postinst() {
	ewarn "Please read the README, and follow instructions in order to"
	ewarn "execute and configure rlcompleter2."
}
