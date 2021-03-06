# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-ruby/cvs-repo/gentoo-x86/dev-ruby/stomp/stomp-1.1.7.ebuild,v 1.5 2011/09/19 21:53:21 maekke Exp $

EAPI="2"

USE_RUBY="ruby18 ree18"

RUBY_FAKEGEM_DOCDIR="doc"
RUBY_FAKEGEM_EXTRADOC="CHANGELOG.rdoc README.rdoc"

# There is also a test task but that requires a live stomp server.
RUBY_FAKEGEM_TASK_TEST="spec"

inherit ruby-fakegem

DESCRIPTION="Ruby bindings for the stomp messaging protocol"
HOMEPAGE="http://rubyforge.org/projects/stomp/"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

ruby_add_bdepend "test? ( dev-ruby/rspec:2 )"
