# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-ruby/cvs-repo/gentoo-x86/dev-ruby/oniguruma/Attic/oniguruma-1.1.0.ebuild,v 1.1 2007/06/19 01:32:11 nichoj Exp $

inherit ruby gems

USE_RUBY="ruby18"
DESCRIPTION="Ruby bindings to the Oniguruma"
HOMEPAGE="http://oniguruma.rubyforge.org/"
SRC_URI="http://gems.rubyforge.org/gems/${P}.gem"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86" 
IUSE=""

DEPEND=">=dev-lang/ruby-1.8.5
	dev-libs/oniguruma"
