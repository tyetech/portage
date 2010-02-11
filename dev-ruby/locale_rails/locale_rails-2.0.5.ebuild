# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-ruby/cvs-repo/gentoo-x86/dev-ruby/locale_rails/Attic/locale_rails-2.0.5.ebuild,v 1.2 2010/02/11 14:27:50 fauli Exp $

inherit gems

DESCRIPTION="This library provides some Rails localized functions."
HOMEPAGE="http://www.yotabanana.com/hiki/ruby-gettext-rails.html"
LICENSE="Ruby"

KEYWORDS="~amd64 ~ppc x86"
SLOT="0"
IUSE=""

USE_RUBY="ruby18"

RDEPEND=">=dev-ruby/locale-2.0.5"
DEPEND="${RDEPEND}"
