# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-ruby/cvs-repo/gentoo-x86/dev-ruby/ruby-zlib/Attic/ruby-zlib-0.6.0.ebuild,v 1.8 2005/10/03 13:28:08 agriffis Exp $

inherit ruby

IUSE=""

DESCRIPTION="Extension library to use zlib from Ruby"
HOMEPAGE="http://www.blue.sky.or.jp/atelier/ruby/"
SRC_URI="http://www.blue.sky.or.jp/atelier/ruby/${P}.tar.gz"

SLOT="0"
USE_RUBY="ruby16 ruby18"
LICENSE="Ruby"
KEYWORDS="alpha ~ia64 ppc sparc x86"

DEPEND="sys-libs/zlib"
