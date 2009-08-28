# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-ruby/cvs-repo/gentoo-x86/dev-ruby/webrat/Attic/webrat-0.5.3.ebuild,v 1.1 2009/08/28 06:23:14 graaff Exp $

inherit gems

DESCRIPTION="Ruby acceptance testing for web applications"
HOMEPAGE="http://github.com/brynary/webrat/"
LICENSE="MIT"

KEYWORDS="~x86 ~amd64"
SLOT="0"
IUSE=""

USE_RUBY="ruby18"

RDEPEND=">=dev-ruby/nokogiri-1.2.0
	>=dev-ruby/rack-1.0"
DEPEND="${DEPEND}"
