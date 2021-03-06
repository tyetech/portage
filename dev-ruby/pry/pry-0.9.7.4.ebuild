# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-ruby/cvs-repo/gentoo-x86/dev-ruby/pry/pry-0.9.7.4.ebuild,v 1.5 2012/08/09 06:07:59 graaff Exp $

EAPI=4

USE_RUBY="ruby18 ree18"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.markdown"

inherit ruby-fakegem

DESCRIPTION="Pry is a powerful alternative to the standard IRB shell for Ruby."
HOMEPAGE="https://github.com/pry/pry/wiki"
IUSE=""
SLOT="0"

LICENSE="MIT"
KEYWORDS="~amd64 ~ppc64 ~x86"

ruby_add_rdepend ">=dev-ruby/ruby_parser-2.0.5
	>=dev-ruby/coderay-0.9.8
	>=dev-ruby/slop-2.1.0
	>=dev-ruby/method_source-0.6.7
	!!dev-python/pry"

ruby_add_bdepend "test? ( >=dev-ruby/bacon-1.1.0 >=dev-ruby/open4-1.0.1 )"

all_ruby_prepare() {
	# Make version dependencies more lenient to avoid problems with
	# compatible upgrades.
	sed -i -e 's/~> 2.0.5/>= 2.0.5/' \
		-e 's/~> 0.9.8/>= 0.9.8/'    \
		-e 's/~> 2.1.0/>= 2.1.0/'    \
		-e 's/~> 0.6.7/>= 0.6.7/'    \
		pry.gemspec || die
}

each_ruby_test() {
	${RUBY} -S bacon -Itest -a -q || die
}
