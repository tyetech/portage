# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-ruby/cvs-repo/gentoo-x86/dev-ruby/gen/Attic/gen-0.29.0.ebuild,v 1.1 2006/04/17 23:32:55 caleb Exp $

inherit ruby gems

USE_RUBY="ruby18"
DESCRIPTION="A simple code generation system"
HOMEPAGE="http://www.nitrohq.com/"
SRC_URI="http://gems.rubyforge.org/gems/${P}.gem"

LICENSE="Ruby"
SLOT="0"
KEYWORDS="~ia64 ~x86"
IUSE=""

DEPEND=">=dev-lang/ruby-1.8.3
	=dev-ruby/glue-${PV}"
