# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-haskell/cvs-repo/gentoo-x86/dev-haskell/hunit/hunit-1.2.2.1.ebuild,v 1.4 2012/09/12 15:22:34 qnikst Exp $

CABAL_FEATURES="lib profile haddock"
inherit haskell-cabal

MY_PN="HUnit"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="A unit testing framework for Haskell"
HOMEPAGE="http://hunit.sourceforge.net/"
SRC_URI="mirror://hackage/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~ia64 ~ppc ~ppc64 ~sparc ~x86"
IUSE=""

RDEPEND=">=dev-lang/ghc-6.6.1"

DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.2"

S="${WORKDIR}/${MY_P}"

src_install () {
	cabal_src_install
	if use doc; then
		dohtml -r "${S}/doc/"*
	fi
}

src_install() {
	cabal_src_install

	# remove hunit self-tests, we don't want to install them
	rm -rf "${D}/usr/bin"
}
