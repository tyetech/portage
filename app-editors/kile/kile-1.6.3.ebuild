# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-editors/cvs-repo/gentoo-x86/app-editors/kile/Attic/kile-1.6.3.ebuild,v 1.9 2004/09/14 12:52:47 carlo Exp $

inherit kde

DESCRIPTION="A Latex Editor and TeX shell for kde"
SRC_URI="mirror://sourceforge/kile/${P}.tar.gz"
HOMEPAGE="http://kile.sourceforge.net"

IUSE="kde"
SLOT=0

KEYWORDS="x86 amd64 sparc ppc"
LICENSE="GPL-2"

DEPEND="dev-lang/perl"
RDEPEND="virtual/tetex
	kde? (kde-base/kdegraphics)"
need-kde 3.1
