# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-arch/cvs-repo/gentoo-x86/app-arch/afio/afio-2.5.ebuild,v 1.13 2012/10/05 18:07:20 ago Exp $

inherit eutils toolchain-funcs

DESCRIPTION="makes cpio-format archives and deals somewhat gracefully with input data corruption."
HOMEPAGE="http://freshmeat.net/projects/afio/"
SRC_URI="http://members.brabant.chello.nl/~k.holtman/${P}.tgz"

LICENSE="Artistic LGPL-2"
SLOT="0"
KEYWORDS="alpha amd64 ~hppa ppc sparc x86"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}
	>=sys-apps/sed-4"

src_unpack() {
	unpack ${A}
	cd "${S}"
	epatch "${FILESDIR}"/Makefile.patch
	# use our cflags
	sed -i \
		-e "s:-O2 -fomit-frame-pointer:${CFLAGS}:" \
		Makefile \
		|| die "sed Makefile failed"
}

src_compile() {
	emake CC="$(tc-getCC)" || die "emake failed"
}

src_install() {
	local i
	dobin afio || die "dobin failed"
	dodoc ANNOUNCE-2.5 HISTORY README SCRIPTS
	for i in 1 2 3 4 5 ; do
		docinto script$i
		dodoc script$i/*
	done
	doman afio.1
}
