# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-forensics/cvs-repo/gentoo-x86/app-forensics/pasco/pasco-20040505_p1.ebuild,v 1.7 2011/06/26 06:34:11 radhermit Exp $

inherit toolchain-funcs

MY_P=${PN}_${PV/_p/_}
DESCRIPTION="IE Activity Parser"
HOMEPAGE="http://sourceforge.net/projects/odessa/"
SRC_URI="mirror://sourceforge/odessa/${MY_P}.tar.gz"
LICENSE="as-is"
SLOT="0"
KEYWORDS="~amd64 ~ppc x86"
IUSE=""

S=${WORKDIR}/${MY_P}

src_compile() {
	cd src
	$(tc-getCC) ${CFLAGS} ${LDFLAGS} -o pasco pasco.c -lm -lc || die "failed to compile"
}

src_install() {
	dobin src/pasco
}
