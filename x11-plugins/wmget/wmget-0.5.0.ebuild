# Copyright 1999-2003 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-plugins/cvs-repo/gentoo-x86/x11-plugins/wmget/Attic/wmget-0.5.0.ebuild,v 1.4 2004/03/19 10:04:28 aliz Exp $

inherit eutils

S="${WORKDIR}/${PN}"

DESCRIPTION="libcurl-based dockapp for automated-downloads"
HOMEPAGE="http://amtrickey.net/wmget/"
SRC_URI="http://amtrickey.net/download/${P}-src.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 amd64"

DEPEND="virtual/x11
	>=net-ftp/curl-7.9.7"

src_unpack() {
	unpack ${A} ; cd ${S}
	epatch ${FILESDIR}/makefile.diff
}

src_compile() {
	emake || die "parallel make failed"
}

src_install() {
	make PREFIX=${D}/usr install || die "make install failed"
}
