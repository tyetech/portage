# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-ruby/cvs-repo/gentoo-x86/dev-ruby/right_http_connection/right_http_connection-1.3.0.ebuild,v 1.3 2012/06/24 05:12:36 graaff Exp $

EAPI=4

USE_RUBY="ruby18 ree18 ruby19 jruby"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.txt History.txt"

RUBY_FAKEGEM_TASK_TEST="cucumber"

inherit ruby-fakegem

DESCRIPTION="RightScale's robust HTTP/S connection module"
HOMEPAGE="http://rightscale.rubyforge.org/"
SRC_URI="https://github.com/rightscale/right_http_connection/tarball/v${PV} -> ${P}.tgz"
RUBY_S="rightscale-${PN}-*"

LICENSE="as-is" # truly
SLOT="0"
KEYWORDS="~amd64 ~ppc ~ppc64 ~x86 ~x86-fbsd"
IUSE=""

RESTRICT="test"
#USE_RUBY="ruby19 ree18" ruby_add_bdepend "test? ( dev-util/cucumber )"

all_ruby_prepare() {
	rm Gemfile Gemfile.lock || die
	sed -i -e '/bundler/ s:^:#:' features/support/env.rb || die
}

each_ruby_test() {
	case ${RUBY} in
		*ruby19)
			;;
		*jruby)
			;;
		*)
			${RUBY} -S cucumber features || die
			;;
	esac
}
