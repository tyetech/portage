# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-util/cvs-repo/gentoo-x86/dev-util/cssc/Attic/cssc-1.0.1.ebuild,v 1.6 2010/02/03 09:02:58 grobian Exp $

DESCRIPTION="CSSC is the GNU Project's replacement for SCCS"
SRC_URI="mirror://sourceforge/cssc/CSSC-${PV}.tar.gz"
HOMEPAGE="http://cssc.sourceforge.net/"
SLOT="0"
LICENSE="GPL-2 LGPL-2"
S=${WORKDIR}/CSSC-${PV}
KEYWORDS="~amd64 x86 ~ppc-macos ~x86-macos"
IUSE=""
RESTRICT="test"

DEPEND=""

src_compile() {
	econf --enable-binary || die
	emake all || die
}

src_install () {
	make DESTDIR="${D}" install || die
	dodoc README NEWS ChangeLog AUTHORS
}
