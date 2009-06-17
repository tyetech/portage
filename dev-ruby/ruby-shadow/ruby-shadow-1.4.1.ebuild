# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-ruby/cvs-repo/gentoo-x86/dev-ruby/ruby-shadow/Attic/ruby-shadow-1.4.1.ebuild,v 1.5 2009/06/17 20:08:00 fauli Exp $

inherit ruby

DESCRIPTION="ruby shadow bindings"
HOMEPAGE="http://ttsky.net"
SRC_URI="http://ttsky.net/src/${P}.tar.gz"

S=${WORKDIR}/shadow-${PV}

LICENSE="Ruby"
SLOT="0"
KEYWORDS="~amd64 ~ppc sparc x86"
IUSE=""

DEPEND=">=dev-lang/ruby-1.8"
