# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-shells/cvs-repo/gentoo-x86/app-shells/mksh/Attic/mksh-31.ebuild,v 1.1 2007/09/08 15:24:43 hanno Exp $

DESCRIPTION="MirBSD KSH Shell"
HOMEPAGE="http://mirbsd.de/mksh"
SRC_URI="http://www.mirbsd.org/MirOS/dist/mir/mksh/${PN}-R${PV}.cpio.gz"
LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~x86"
IUSE=""
DEPEND="app-arch/cpio"
RDEPEND=""
S="${WORKDIR}/${PN}"

src_unpack() {
	gzip -dc ${DISTDIR}/${PN}-R${PV}.cpio.gz | cpio -mid
}

src_compile() {
	sh Build.sh -r || die
}

src_install() {
	dobin mksh || die
	doman mksh.1 || die
	dodoc dot.mkshrc || die
}

src_test() {
	./test.sh || die
}
