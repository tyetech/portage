# Copyright 1999-2003 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-analyzer/cvs-repo/gentoo-x86/net-analyzer/packit/Attic/packit-0.6.0c-r1.ebuild,v 1.3 2003/10/09 02:33:17 hillster Exp $

inherit eutils

DESCRIPTION="network auditing tool that allows you to monitor, manipulate, and inject customized IPv4 traffic"
HOMEPAGE="http://www.packetfactory.net/projects/packit/"
SRC_URI="http://www.packetfactory.net/projects/packit/downloads/${P}.tgz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="x86"

DEPEND=">=net-libs/libnet-1.1.0-r3"

src_compile() {
	econf || die "configure failed"
	emake || die "configure failed"
}

src_install() {
	make install DESTDIR=${D} || die
	dodoc INSTALL LICENSE VERSION docs/*
}
