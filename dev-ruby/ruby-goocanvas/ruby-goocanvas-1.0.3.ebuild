# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-ruby/cvs-repo/gentoo-x86/dev-ruby/ruby-goocanvas/ruby-goocanvas-1.0.3.ebuild,v 1.5 2012/09/27 09:01:44 ssuominen Exp $

EAPI=2
USE_RUBY="ruby18"

inherit ruby-ng-gnome2

DESCRIPTION="Ruby binding of GooCanvas"
KEYWORDS="amd64 ~ppc x86"
IUSE=""

RDEPEND="${RDEPEND}
	x11-libs/goocanvas:0"
DEPEND="${DEPEND}
	x11-libs/goocanvas:0"

ruby_add_bdepend "dev-ruby/pkg-config
	dev-ruby/rcairo"
