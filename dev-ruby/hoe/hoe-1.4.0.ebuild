# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-ruby/cvs-repo/gentoo-x86/dev-ruby/hoe/Attic/hoe-1.4.0.ebuild,v 1.5 2008/03/14 16:28:16 armin76 Exp $

inherit ruby gems

DESCRIPTION="Hoe extends rake to provide full project automation."
HOMEPAGE="http://seattlerb.rubyforge.org/"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 ia64 ~ppc ppc64 x86"
IUSE=""

DEPEND=">=dev-lang/ruby-1.8.4
	>=dev-ruby/rake-0.7.3
	>=dev-ruby/rubyforge-0.4.4"
