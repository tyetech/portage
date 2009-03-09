# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-ruby/cvs-repo/gentoo-x86/dev-ruby/gruff/Attic/gruff-0.2.9.ebuild,v 1.6 2009/03/09 04:21:46 mr_bones_ Exp $

EAPI="2"

inherit ruby gems

DESCRIPTION="A ruby library for creating pretty graphs and charts"
HOMEPAGE="http://rubyforge.org/projects/gruff/"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 ia64 x86"
IUSE=""
RESTRICT="test"

DEPEND=">=dev-lang/ruby-1.8.2
	>=dev-ruby/hoe-1.3.0
	dev-ruby/rmagick
	media-gfx/imagemagick[truetype]"
