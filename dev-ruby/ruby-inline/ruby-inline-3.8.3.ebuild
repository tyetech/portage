# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-ruby/cvs-repo/gentoo-x86/dev-ruby/ruby-inline/Attic/ruby-inline-3.8.3.ebuild,v 1.2 2010/01/29 18:47:51 armin76 Exp $

inherit gems

MY_P="RubyInline-${PV}"
DESCRIPTION="Allows to embed C/C++ in Ruby code"
HOMEPAGE="http://www.zenspider.com/ZSS/Products/RubyInline/"
SRC_URI="http://gems.rubyforge.org/gems/${MY_P}.gem"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~ia64 ~ppc ~ppc64 ~x86"
IUSE=""

DEPEND="dev-ruby/zentest"
RDEPEND="${DEPEND}"

USE_RUBY="ruby18 ruby19"
