# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-ruby/cvs-repo/gentoo-x86/dev-ruby/fcgi/fcgi-0.8.8-r2.ebuild,v 1.2 2012/08/16 16:46:48 flameeyes Exp $

EAPI=4
USE_RUBY="ruby18 ruby19 ree18 jruby"

RUBY_FAKEGEM_TASK_TEST=""
RUBY_FAKEGEM_TASK_DOC=""

RUBY_FAKEGEM_EXTRADOC="README README.signals ChangeLog"

inherit multilib ruby-fakegem

DESCRIPTION="FastCGI library for Ruby"
HOMEPAGE="http://rubyforge.org/projects/fcgi/"

KEYWORDS="amd64 ~hppa ppc ppc64 x86 ~x86-fbsd ~amd64-linux ~x86-linux ~ppc-macos ~x86-macos"
LICENSE="Ruby"

DEPEND+=" dev-libs/fcgi"
RDEPEND+=" dev-libs/fcgi"

IUSE=""
SLOT="0"

each_ruby_configure() {
	case ${RUBY} in
		*ruby18|*rubyee18)
			${RUBY} -C ext/fcgi extconf.rb || die "extconf failed"
			;;
	esac
}

each_ruby_compile() {
	case ${RUBY} in
		*ruby18|*rubyee18)
			emake -C ext/fcgi
			cp ext/fcgi/fcgi$(get_modname) lib || die
			;;
	esac
}
