# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-editors/cvs-repo/gentoo-x86/app-editors/ne/ne-2.1.ebuild,v 1.2 2010/06/11 19:12:30 ssuominen Exp $

EAPI="2"

inherit eutils toolchain-funcs

DESCRIPTION="the nice editor, easy to use for the beginner and powerful for the wizard"
HOMEPAGE="http://ne.dsi.unimi.it/"
SRC_URI="http://ne.dsi.unimi.it/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~ppc64 ~x86 ~x86-interix ~amd64-linux ~x86-linux ~ppc-macos ~x86-macos ~sparc-solaris ~x86-solaris"
IUSE=""

RDEPEND=">=sys-libs/ncurses-5.2"
DEPEND="${RDEPEND}
	dev-lang/perl"

src_prepare() {
	sed -i -e 's/-O3//' src/makefile || die
	epatch "${FILESDIR}"/${P}-asneeded.patch
}

src_compile() {
	emake \
		-j1 \
		-C src \
		ne \
		OPTS="${CFLAGS}" \
		CC="$(tc-getCC)" \
		NE_GLOBAL_DIR="/usr/share/ne" \
		|| die "emake failed"
}

src_install() {
	dobin src/ne || die "dobin failed"

	insinto /usr/share/ne/syntax
	doins syntax/*.jsf || die "doins failed"

	doman doc/ne.1 || die "doman failed"
	dohtml -r doc/html/. || die "dohtml failed"
	dodoc CHANGES README doc/*.{txt,pdf,texinfo} doc/default.* || die "dodoc failed"
}
