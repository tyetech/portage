# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-plugins/cvs-repo/gentoo-x86/x11-plugins/gkrellmitime/Attic/gkrellmitime-1.0.ebuild,v 1.11 2004/06/24 22:55:13 agriffis Exp $

IUSE=""
DESCRIPTION="Internet Time plugin for Gkrellm2"
SRC_URI="http://eric.bianchi.free.fr/gkrellm/${P}.tar.gz"
HOMEPAGE="http://eric.bianchi.free.fr/gkrellm/"

DEPEND=">=app-admin/gkrellm-2*"

SLOT="2"
LICENSE="GPL-2"
KEYWORDS="x86 ~sparc ppc alpha"

src_compile() {
	make || die
}

src_install () {
	insinto /usr/lib/gkrellm2/plugins
	doins gkrellm_itime.so
	dodoc README ChangeLog COPYING
}
