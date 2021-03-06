# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-ruby/cvs-repo/gentoo-x86/dev-ruby/will_paginate/will_paginate-2.3.15.ebuild,v 1.4 2011/09/26 11:31:36 flameeyes Exp $

EAPI=2
USE_RUBY="ruby18"

RUBY_FAKEGEM_DOCDIR="doc"
RUBY_FAKEGEM_EXTRADOC="CHANGELOG.rdoc README.rdoc"

inherit ruby-fakegem

DESCRIPTION="Most awesome pagination solution for Ruby  "
HOMEPAGE="http://github.com/mislav/will_paginate/"

LICENSE="as-is"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~x86-macos"
IUSE=""

ruby_add_bdepend "
	test? (
		dev-ruby/mocha
		dev-ruby/rack
		dev-ruby/rails:2.3
		virtual/ruby-test-unit
		!dev-ruby/test-unit:2
	)"
ruby_add_rdepend 'dev-ruby/activesupport:2.3'

each_ruby_test() {
	# Only works with 2.3.x, so guard against rails 3 being installed
	# already.
	RAILS_VERSION="~>2.3.5" rake test || die "Tests failed."
}
