# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-proxy/cvs-repo/gentoo-x86/net-proxy/paros/Attic/paros-3.2.0.ebuild,v 1.2 2005/05/05 05:13:56 mrness Exp $

DESCRIPTION="HTTP/HTTPS proxy for evaluate security of web applications"
HOMEPAGE="http://www.parosproxy.org/"
SRC_URI="mirror://sourceforge/${PN}/${P}-unix.zip"

LICENSE="Clarified-Artistic"
SLOT="0"
KEYWORDS="x86"
IUSE=""

DEPEND="app-arch/unzip"
RDEPEND=">=virtual/jre-1.4"

S=${WORKDIR}/${PN}

src_install() {
	sed -i -e '1i#!/bin/sh' -e '1icd /opt/paros' startserver.sh
	exeinto /usr/sbin
	newbin startserver.sh paros
	rm startserver.*

	dodir /opt && cp -a ${S} ${D}/opt || die "failed to copy files"
}
