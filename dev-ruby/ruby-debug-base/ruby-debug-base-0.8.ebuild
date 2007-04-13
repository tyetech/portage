# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-ruby/cvs-repo/gentoo-x86/dev-ruby/ruby-debug-base/Attic/ruby-debug-base-0.8.ebuild,v 1.2 2007/04/13 21:13:39 robbat2 Exp $

inherit ruby gems

USE_RUBY="ruby18"
DESCRIPTION="Fast Ruby debugger"
HOMEPAGE="http://rubyforge.org/projects/ruby-debug/"
SRC_URI="http://gems.rubyforge.org/gems/${P}.gem"

LICENSE="ruby-debug"
KEYWORDS="~x86 ~ppc ~amd64"

DEPEND=">=dev-lang/ruby-1.8.4"
RDEPEND="${DEPEND}"
