# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-ruby/cvs-repo/gentoo-x86/dev-ruby/ruby-debug-base/Attic/ruby-debug-base-0.10.3.ebuild,v 1.3 2010/01/16 16:02:32 graaff Exp $

inherit ruby gems

USE_RUBY="ruby18"
DESCRIPTION="Fast Ruby debugger"
HOMEPAGE="http://rubyforge.org/projects/ruby-debug/"
SRC_URI="http://gems.rubyforge.org/gems/${P}.gem"

LICENSE="BSD-2"
KEYWORDS="~amd64 ~ppc ~x86"
IUSE=""

DEPEND=">=dev-lang/ruby-1.8.4
	>=dev-ruby/linecache-0.3"
RDEPEND="${DEPEND}"
