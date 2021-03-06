# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/virtual/cvs-repo/gentoo-x86/virtual/ruby-minitest/ruby-minitest-0-r1.ebuild,v 1.12 2011/12/30 19:27:22 graaff Exp $

EAPI=2
USE_RUBY="ruby18 ree18 jruby"

inherit ruby-ng

DESCRIPTION="Virtual ebuild for the Ruby minitest library"
HOMEPAGE=""
SRC_URI=""

LICENSE=""
SLOT="0"
KEYWORDS="~alpha amd64 ~arm ~hppa ia64 ppc ppc64 sparc x86 ~x86-fbsd ~amd64-linux ~x86-linux ~ppc-macos ~x64-macos ~x86-macos ~x86-solaris"
IUSE=""

RDEPEND="ruby_targets_ruby18? ( dev-ruby/minitest[ruby_targets_ruby18] )
	ruby_targets_ree18? ( dev-ruby/minitest[ruby_targets_ree18] )
	ruby_targets_jruby? ( dev-ruby/minitest[ruby_targets_jruby] )"
DEPEND=""
