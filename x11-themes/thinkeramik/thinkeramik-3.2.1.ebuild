# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-themes/cvs-repo/gentoo-x86/x11-themes/thinkeramik/Attic/thinkeramik-3.2.1.ebuild,v 1.8 2005/01/01 02:52:19 weeve Exp $

inherit kde
need-kde 3.2

DESCRIPTION="A cool kde style modified from keramik"
SRC_URI="http://prefsx1.hp.infoseek.co.jp/tk040429/${P}.tar.gz"
HOMEPAGE="http://www.kde-look.org/content/show.php?content=10919"
RESTRICT="nomirror"

LICENSE="GPL-2"
SLOT="0"
IUSE=""

KEYWORDS="x86 ppc ~amd64 ~sparc"

src_compile()
{
	./configure --prefix=$KDEDIR
	emake
}

