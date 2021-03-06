# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-ruby/cvs-repo/gentoo-x86/dev-ruby/term-ansicolor/term-ansicolor-1.0.7.ebuild,v 1.7 2012/10/03 12:51:00 ago Exp $

EAPI=4
USE_RUBY="ruby18 ree18 jruby ruby19"

RUBY_FAKEGEM_RECIPE_DOC="rdoc"
RUBY_FAKEGEM_RECIPE_TEST="none"
RUBY_FAKEGEM_EXTRADOC="CHANGES README.rdoc"

RUBY_FAKEGEM_GEMSPEC="term-ansicolor.gemspec"

# don't install a cdiff wrapper, collides with app-misc/colordiff (bug
# #310073).
RUBY_FAKEGEM_BINWRAP="decolor"

inherit ruby-fakegem

DESCRIPTION="Small Ruby library that colors strings using ANSI escape sequences."
HOMEPAGE="http://term-ansicolor.rubyforge.org/"
LICENSE="GPL-2"

KEYWORDS="amd64 ~hppa ~ia64 ppc ppc64 ~sparc ~x86 ~x86-fbsd ~amd64-linux ~x86-linux ~ppc-macos ~x64-macos ~x86-macos ~sparc-solaris ~sparc64-solaris ~x64-solaris ~x86-solaris"
SLOT="0"
IUSE=""

ruby_add_bdepend "test? ( virtual/ruby-test-unit )"

each_ruby_test() {
	${RUBY} -Ilib tests/ansicolor_test.rb || die
}

all_ruby_install() {
	all_fakegem_install

	docinto examples
	dodoc examples/*
}
