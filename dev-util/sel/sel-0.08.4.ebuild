# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-util/cvs-repo/gentoo-x86/dev-util/sel/sel-0.08.4.ebuild,v 1.10 2009/07/18 08:12:20 flameeyes Exp $

inherit toolchain-funcs

DESCRIPTION="A filemanager for shell scripts"
SRC_URI="http://www.rninet.de/darkstar/files/${P}.tar.gz"
HOMEPAGE="http://www.rninet.de/darkstar/sel.html"

SLOT="0"
LICENSE="GPL-2"
KEYWORDS="ppc s390 sparc x86"
IUSE=""

RDEPEND=">=sys-libs/ncurses-5.1"
DEPEND="${RDEPEND}"

src_unpack () {
	unpack ${A}
	cd "${S}"

	sed -i -e "s:/usr/local/share/sel/help\.txt:/usr/share/sel/help\.txt:" \
		sel.c
}

doecho() {
	echo "$@"
	"$@"
}

src_compile() {
	doecho $(tc-getCC) -o ${PN} \
		${CFLAGS} ${LDFLAGS} \
		${PN}.c -lncurses \
		|| die "build failed"
}

src_install () {
	dobin sel || die
	doman sel.1 || die
	insinto /usr/share/sel
	doins help.txt || die
	dodoc README.GER || die
}
