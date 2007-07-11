# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-ruby/cvs-repo/gentoo-x86/dev-ruby/ruby-prof/Attic/ruby-prof-0.5.0.ebuild,v 1.1 2007/07/11 19:42:37 graaff Exp $

inherit ruby gems

DESCRIPTION="A module for profiling Ruby code"
HOMEPAGE="http://rubyforge.org/projects/ruby-prof/"
SRC_URI="http://gems.rubyforge.org/gems/${P}.gem"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~x86"
IUSE=""

USE_RUBY="ruby18 ruby19"
