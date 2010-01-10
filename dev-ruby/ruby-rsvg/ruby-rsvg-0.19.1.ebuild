# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-ruby/cvs-repo/gentoo-x86/dev-ruby/ruby-rsvg/Attic/ruby-rsvg-0.19.1.ebuild,v 1.3 2010/01/10 18:17:57 nixnut Exp $

inherit ruby ruby-gnome2

DESCRIPTION="Ruby bindings for librsvg"
KEYWORDS="amd64 ~ia64 ~ppc x86"
IUSE="cairo"
USE_RUBY="ruby18"

RDEPEND="
	>=gnome-base/librsvg-2.8
	>=dev-ruby/ruby-glib2-${PV}
	>=dev-ruby/ruby-gdkpixbuf2-${PV}
	cairo? ( dev-ruby/rcairo )"
DEPEND="${RDEPEND}
	dev-util/pkgconfig"
