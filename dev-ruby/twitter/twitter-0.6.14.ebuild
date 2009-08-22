# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-ruby/cvs-repo/gentoo-x86/dev-ruby/twitter/Attic/twitter-0.6.14.ebuild,v 1.1 2009/08/22 07:06:33 graaff Exp $

inherit gems

DESCRIPTION="Ruby wrapper around the Twitter API"
HOMEPAGE="http://twitter.rubyforge.org/"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

USE_RUBY="ruby18"

DEPEND="=dev-ruby/httparty-0.4.3
	>=dev-ruby/oauth-0.3.4
	=dev-ruby/mash-0.0.3"
RDEPEND="${DEPEND}"
