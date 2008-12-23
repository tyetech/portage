# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-apps/cvs-repo/gentoo-x86/x11-apps/xwarppointer/Attic/xwarppointer-1.ebuild,v 1.3 2008/12/23 17:57:16 hncaldwell Exp $

DESCRIPTION="Program to move the mouse cursor"
HOMEPAGE="http://www.ishiboo.com/~nirva/Projects/xwarppointer/"
SRC_URI="http://www.ishiboo.com/~nirva/Projects/xwarppointer/${PN}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~x86"
IUSE=""

DEPEND="x11-libs/libX11"
RDEPEND="${DEPEND}"

S="${WORKDIR}/${PN}"

src_compile() {
	sed -i 's:^X11HOME=.*:X11HOME=/usr/X11R6:' \
		Makefile || die 'setting X11HOME failed'

	emake || die "emake failed"
}

src_install() {
	dobin xwarppointer || die "install failed"
	dodoc README
}
