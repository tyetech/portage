# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-python/cvs-repo/gentoo-x86/dev-python/rlcompleter2/Attic/rlcompleter2-0.96.ebuild,v 1.1 2005/04/14 19:56:16 kloeri Exp $

inherit distutils

DESCRIPTION="Python command line completion."
HOMEPAGE="http://codespeak.net/rlcompleter2/"
SRC_URI="http://codespeak.net/rlcompleter2/download/${P}.tar.gz"

LICENSE="PSF-2.2"
SLOT="0"
KEYWORDS="~x86 ~ppc"
IUSE=""

DOCS="PKG-INFO"

pkg_postinst() {
	ewarn "Please read the README, and follow instructions in order to"
	ewarn "execute and configure rlcompleter2."
}
