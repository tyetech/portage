# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-dicts/cvs-repo/gentoo-x86/app-dicts/ispell-bg/Attic/ispell-bg-4.1.ebuild,v 1.4 2008/11/06 09:29:22 armin76 Exp $

inherit multilib

DESCRIPTION="Bulgarian dictionary for ispell"
HOMEPAGE="http://sourceforge.net/projects/bgoffice"
SRC_URI="mirror://sourceforge/bgoffice/${P}.tar.gz"

SLOT="0"
LICENSE="GPL-2"
IUSE=""
KEYWORDS="~alpha ~amd64 ~mips ~ppc ~sparc ~x86"

DEPEND="app-text/ispell"

src_install () {
	insinto /usr/$(get_libdir)/ispell
	doins "${S}/data/bulgarian.aff" "${S}/data/bulgarian.hash" || die
}
