# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-misc/cvs-repo/gentoo-x86/x11-misc/fbpanel/Attic/fbpanel-3.8.ebuild,v 1.5 2004/10/04 21:07:10 pvdabeel Exp $

DESCRIPTION="fbpanel is a light-weight X11 desktop panel"
SRC_URI="mirror://sourceforge/${PN}/${P}.tgz"
HOMEPAGE="http://fbpanel.sourceforge.net/"
IUSE=""

SLOT="0"
KEYWORDS="x86 ppc"
LICENSE="as-is"
DEPEND=">=x11-libs/gtk+-2"

src_compile()
{
	./configure --prefix=/usr || die "Configure failed."
	emake || die "Make failed."
}

src_install () {
	emake install PREFIX=${D}/usr || die
	dodoc README CREDITS COPYING CHANGELOG
}
