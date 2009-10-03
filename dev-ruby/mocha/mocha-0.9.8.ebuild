# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-ruby/cvs-repo/gentoo-x86/dev-ruby/mocha/Attic/mocha-0.9.8.ebuild,v 1.1 2009/10/03 13:05:56 a3li Exp $

inherit gems

USE_RUBY="ruby18"

DESCRIPTION="A Ruby library for mocking and stubbing using a syntax like that of JMock, and SchMock"
HOMEPAGE="http://mocha.rubyforge.org/"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="dev-ruby/rake"
RDEPEND="${DEPEND}"
