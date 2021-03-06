# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-haskell/cvs-repo/gentoo-x86/dev-haskell/gtk2hs-buildtools/gtk2hs-buildtools-0.12.3.1.ebuild,v 1.4 2012/09/23 08:43:07 phajdan.jr Exp $

EAPI=4

CABAL_FEATURES="bin"
inherit base haskell-cabal

DESCRIPTION="Tools to build the Gtk2Hs suite of User Interface libraries."
HOMEPAGE="http://projects.haskell.org/gtk2hs/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}
		dev-haskell/alex
		>=dev-haskell/cabal-1.8
		dev-haskell/happy
		>=dev-lang/ghc-6.10.1"

PATCHES=("${FILESDIR}"/${PN}-0.12.3-workaround-UName.patch)
