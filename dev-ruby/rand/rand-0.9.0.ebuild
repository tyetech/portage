# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-ruby/cvs-repo/gentoo-x86/dev-ruby/rand/Attic/rand-0.9.0.ebuild,v 1.1 2006/10/08 01:11:23 pclouds Exp $

inherit ruby

USE_RUBY="ruby18"

DESCRIPTION="A Ruby library for picking random elements and shuffling."
HOMEPAGE="http://chneukirchen.org/blog/static/projects/rand.html"
SRC_URI="http://chneukirchen.org/releases/${P}.tar.gz"

LICENSE="Ruby"
SLOT="0"
KEYWORDS="~x86"
IUSE=""

DEPEND=">=dev-lang/ruby-1.8.4"

src_unpack() {
	unpack ${A}
	cd ${P}
	[ -f install.rb ] && mv install.rb install.rb.bak
}
