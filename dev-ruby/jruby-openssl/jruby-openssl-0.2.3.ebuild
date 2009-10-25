# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-ruby/cvs-repo/gentoo-x86/dev-ruby/jruby-openssl/Attic/jruby-openssl-0.2.3.ebuild,v 1.2 2009/10/25 21:48:16 volkmar Exp $

inherit ruby gems

USE_RUBY="ruby18"
DESCRIPTION="A Ruby SSL library that works with JRuby"
HOMEPAGE="http://rubyforge.org/projects/jruby-extras"
SRC_URI="http://gems.rubyforge.org/gems/${P}.gem"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~x86"
IUSE=""

RDEPEND="dev-java/jruby"
