# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-ruby/cvs-repo/gentoo-x86/dev-ruby/metaid/Attic/metaid-1.0.ebuild,v 1.2 2006/03/30 03:34:02 agriffis Exp $

inherit ruby gems

USE_RUBY="ruby18"
DESCRIPTION="An aid to Ruby metaprogramming"
HOMEPAGE="http://rubyforge.org/projects/metaid/"
SRC_URI="http://gems.rubyforge.org/gems/${P}.gem"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~ia64 ~x86"
IUSE=""
RESTRICT="test"

DEPEND=">=dev-lang/ruby-1.8.2"
