# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-ruby/cvs-repo/gentoo-x86/dev-ruby/rake/rake-0.8.7-r4.ebuild,v 1.8 2011/03/07 12:00:12 armin76 Exp $

EAPI=2
USE_RUBY="ruby18 jruby"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_TASK_TEST=""

inherit bash-completion ruby-fakegem

DESCRIPTION="Make-like scripting in Ruby"
HOMEPAGE="http://rake.rubyforge.org/"
SRC_URI="mirror://rubyforge/${PN}/${P}.tgz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="alpha amd64 ~arm hppa ia64 ~ppc ppc64 s390 ~sh sparc x86 ~x86-fbsd ~amd64-linux ~x86-linux ~ppc-macos ~x64-macos ~x86-macos ~sparc-solaris ~x64-solaris ~x86-solaris"
IUSE="bash-completion doc"

#ruby_add_bdepend test dev-ruby/flexmock

RESTRICT="test"

all_ruby_compile() {
	if use doc; then
		ruby -Ilib bin/rake rdoc || die "doc generation failed"
	fi
}

each_ruby_test() {
	${RUBY} -Ilib bin/rake test || die "tests failed"
}

all_ruby_install() {
	ruby_fakegem_binwrapper rake

	if use doc; then
		pushd html
		dohtml -r *
		popd
	fi

	dodoc CHANGES README TODO || die
	doman doc/rake.1.gz || die

	dobashcompletion "${FILESDIR}"/rake.bash-completion rake
}
