# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sci-electronics/cvs-repo/gentoo-x86/sci-electronics/iverilog/Attic/iverilog-0.6.1.ebuild,v 1.1 2004/12/27 19:51:43 ribosome Exp $


DESCRIPTION="A Verilog simulation and synthesis tool"
SRC_URI="ftp://icarus.com/pub/eda/verilog/v0.6/verilog-${PV}.tar.gz"
HOMEPAGE="http://www.icarus.com/eda/verilog/"
DEPEND="dev-util/gperf"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="x86"
IUSE=""

src_unpack() {
	unpack ${A}
	cd ${WORKDIR}
	mv verilog-${PV} ${P}
}

src_install() {
	make -j1 \
		prefix=${D}/usr \
		mandir=${D}/usr/share/man \
		infodir=${D}/usr/share/info \
		install || die

	dodoc *.txt COPYING INSTALL examples/*
}
