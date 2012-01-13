# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-benchmarks/cvs-repo/gentoo-x86/app-benchmarks/ioping/Attic/ioping-0.6.ebuild,v 1.1 2012/01/13 08:12:28 jlec Exp $

EAPI=4

inherit eutils

DESCRIPTION="Simple disk I/0 latency measuring tool"
HOMEPAGE="http://code.google.com/p/ioping/"
SRC_URI="http://ioping.googlecode.com/files/${P}.tar.gz"

SLOT="0"
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux"
LICENSE="GPL-3"
IUSE=""

src_prepare() {
	epatch "${FILESDIR}"/${P}-makefile.patch
}

src_compile() {
	emake \
		CC="$(tc-getCC)" \
		PREFIX="${EPREFIX}/usr"
}
