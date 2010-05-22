# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-ruby/cvs-repo/gentoo-x86/dev-ruby/oniguruma/Attic/oniguruma-1.1.0.ebuild,v 1.5 2010/05/22 15:32:55 flameeyes Exp $

inherit ruby gems

USE_RUBY="ruby18"
DESCRIPTION="Ruby bindings to the Oniguruma"
HOMEPAGE="http://oniguruma.rubyforge.org/"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux ~ppc-macos ~x86-macos ~x86-solaris"
IUSE=""

DEPEND=">=dev-lang/ruby-1.8.5
	dev-libs/oniguruma"
