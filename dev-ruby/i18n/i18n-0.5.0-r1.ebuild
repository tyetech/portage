# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-ruby/cvs-repo/gentoo-x86/dev-ruby/i18n/i18n-0.5.0-r1.ebuild,v 1.6 2012/08/16 03:58:55 flameeyes Exp $

EAPI=2

USE_RUBY="ruby18 jruby ree18"

# doc regeneration seem to need Jeweler, which is not currently
# available
RUBY_FAKEGEM_TASK_DOC=""

RUBY_FAKEGEM_EXTRADOC="README.textile CHANGELOG.textile"

inherit ruby-fakegem versionator

DESCRIPTION="Add Internationalization support to your Ruby application."
HOMEPAGE="http://rails-i18n.org/"

SRC_URI="http://github.com/svenfuchs/${PN}/tarball/v${PV} -> ${PN}-git-${PV}.tgz"
S="${WORKDIR}/svenfuchs-${PN}-*"

LICENSE="MIT"
SLOT="$(get_version_component_range 1-2)"
KEYWORDS="~amd64 ~hppa ~ppc ~ppc64 ~x86 ~amd64-linux ~x86-linux ~ppc-macos ~x64-macos ~x86-macos ~x64-solaris ~x86-solaris"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

# The testsuite uses the activerecord gem to run some tests; they
# require sqlite3-ruby, and that is not available on JRuby.
#USE_RUBY="${USE_RUBY/jruby/}" \
#	ruby_add_bdepend "
#			test? (
#				dev-ruby/activerecord
#				dev-ruby/sqlite3
#				dev-ruby/ruby2ruby
#			)"

# mocha is optionally used by the testsuite, try to increase coverage
# of testing by depending on it; when mocha is used, though,
# test-unit:2 cannot be merged at the same time (mocha problem?)
#
# One further test dependency would be ruby-cldr
# (http://rubygems.org/gems/ruby-cldr) but we don't have it in tree
# yet.
ruby_add_bdepend "
	test? (
		dev-ruby/mocha
		dev-ruby/test_declarative
	)"

src_compile() {
	# permissions need to be stricter for Ruby-Inline to work properly.
	chmod 0755 "${HOME}" || die "Failed to fix permissions on home"
	ruby-ng_src_compile
}

src_test() {
	# permissions need to be stricter for Ruby-Inline to work properly.
	chmod 0755 "${HOME}" || die "Failed to fix permissions on home"
	ruby-ng_src_test
}

each_ruby_test() {
	# Make sure the optional activerecord tests are not run for jruby
	# because we don't ship a compatible sqlite3
	case ${RUBY} in
		*jruby)
			;;
		*)
			each_fakegem_test
	esac
}
