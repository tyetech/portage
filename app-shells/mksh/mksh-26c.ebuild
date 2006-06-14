# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-shells/cvs-repo/gentoo-x86/app-shells/mksh/Attic/mksh-26c.ebuild,v 1.2 2006/06/14 23:45:01 hanno Exp $

DESCRIPTION="MirBSD KSH Shell"
HOMEPAGE="http://mirbsd.de/mksh/"
SRC_URI="http://mirbsd.mirsolutions.de/MirOS/dist/mir/mksh/${PN}-R${PV}.cpio.gz"
LICENSE="BSD"
SLOT="0"
KEYWORDS="~ppc ~x86"
IUSE=""
DEPEND="app-arch/cpio"
RDEPEND=""
S=${WORKDIR}/${PN}

src_unpack() {
	gzip -dc ${DISTDIR}/${PN}-R${PV}.cpio.gz | cpio -mid
}

src_compile() {
	sh Build.sh -d -r
}

src_install() {
	dobin mksh
	doman mksh.1
}

src_test() {
	./Test.sh
}
