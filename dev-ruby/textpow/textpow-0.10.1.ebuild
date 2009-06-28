# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-ruby/cvs-repo/gentoo-x86/dev-ruby/textpow/Attic/textpow-0.10.1.ebuild,v 1.1 2009/06/28 08:13:58 graaff Exp $

inherit ruby gems

USE_RUBY="ruby18"
DESCRIPTION="A library to parse and process Textmate bundles."
HOMEPAGE="http://textpow.rubyforge.org/"
SRC_URI="http://gems.rubyforge.org/gems/${P}.gem"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=">=dev-lang/ruby-1.8.5
	>=dev-ruby/oniguruma-1.1.0
	>=dev-ruby/plist-3.0.0"
