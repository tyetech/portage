# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-ruby/cvs-repo/gentoo-x86/dev-ruby/glue/Attic/glue-0.25.0.ebuild,v 1.1 2005/11/17 17:17:44 citizen428 Exp $

inherit ruby gems

USE_RUBY="ruby18"

DESCRIPTION="Glue utilities for Nitro."
HOMEPAGE="http://www.nitrohq.com/"
SRC_URI="http://gems.rubyforge.org/gems/${P}.gem"

LICENSE="Ruby"
SLOT="0"
KEYWORDS="~x86"
IUSE=""

DEPEND=">=dev-lang/ruby-1.8.3
	=dev-ruby/facets-20051030
	=dev-ruby/cmdparse-2.0.0"
