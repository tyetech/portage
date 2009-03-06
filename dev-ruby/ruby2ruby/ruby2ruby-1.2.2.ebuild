# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-ruby/cvs-repo/gentoo-x86/dev-ruby/ruby2ruby/Attic/ruby2ruby-1.2.2.ebuild,v 1.1 2009/03/06 06:55:11 graaff Exp $

inherit gems

DESCRIPTION="Generates readable ruby from ParseTree"
HOMEPAGE="http://seattlerb.rubyforge.org/"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~ppc64 ~x86"
IUSE=""

DEPEND=">=dev-ruby/parsetree-3.0
		>=dev-ruby/hoe-1.8.2"

USE_RUBY="ruby18 ruby19"
