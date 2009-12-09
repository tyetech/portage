# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-ruby/cvs-repo/gentoo-x86/dev-ruby/locale_rails/Attic/locale_rails-2.0.4.ebuild,v 1.4 2009/12/09 21:26:43 maekke Exp $

inherit gems

DESCRIPTION="This library provides some Rails localized functions."
HOMEPAGE="http://www.yotabanana.com/hiki/ruby-gettext-rails.html"
LICENSE="Ruby"

KEYWORDS="amd64 ~ppc x86"
SLOT="0"
IUSE=""

USE_RUBY="ruby18"

RDEPEND=">=dev-ruby/locale-2.0.4"
DEPEND="${RDEPEND}"
