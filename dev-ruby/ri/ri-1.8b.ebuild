# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-ruby/cvs-repo/gentoo-x86/dev-ruby/ri/Attic/ri-1.8b.ebuild,v 1.8 2004/07/14 22:00:29 agriffis Exp $

S=${WORKDIR}/${PN}
DESCRIPTION="Ruby Interactive reference"
HOMEPAGE="http://www.pragmaticprogrammer.com/ruby/downloads/ri.html"
SRC_URI="mirror://sourceforge/rdoc/${P}.tgz"

SLOT="0"
LICENSE="Ruby"
KEYWORDS="alpha hppa mips sparc x86 ~ppc"
IUSE=""

DEPEND=">=dev-lang/ruby-1.6.2"

src_install () {

	DESTDIR=${D} ruby install.rb
	dodoc COPYING ChangeLog README
}
