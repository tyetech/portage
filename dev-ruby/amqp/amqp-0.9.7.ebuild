# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-ruby/cvs-repo/gentoo-x86/dev-ruby/amqp/amqp-0.9.7.ebuild,v 1.1 2012/07/29 07:04:05 graaff Exp $

EAPI=4
USE_RUBY="ruby18 ree18"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="CHANGELOG README.md"

RUBY_FAKEGEM_RECIPE_TEST="rspec"

inherit versionator ruby-fakegem

DESCRIPTION="AMQP client implementation in Ruby/EventMachine"
HOMEPAGE="http://amqp.rubyforge.org/"

LICENSE="Ruby"
SLOT="$(get_version_component_range 1-2)"
KEYWORDS="~amd64 ~x86"
IUSE=""

ruby_add_bdepend "test? ( dev-ruby/multi_json dev-ruby/evented-spec )"
ruby_add_rdepend ">=dev-ruby/eventmachine-0.12.4
	>=dev-ruby/amq-client-0.9.4
	>=dev-ruby/amq-protocol-0.9.4"

all_ruby_prepare() {
	rm Gemfile || die
	sed -i -e '/[Bb]undler/ s:^:#:' -e '/effin_utf8/ s:^:#:' spec/spec_helper.rb || die

	# Many specs require a live rabbit server, but only root can start
	# an instance. Skip these specs for now.
	rm -rf spec/integration spec/unit/amqp/connection_spec.rb || die
}

all_ruby_install() {
	dodoc -r docs examples
}
