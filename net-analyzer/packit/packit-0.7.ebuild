# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-analyzer/cvs-repo/gentoo-x86/net-analyzer/packit/Attic/packit-0.7.ebuild,v 1.7 2005/01/29 01:09:20 dragonheart Exp $

inherit eutils

DESCRIPTION="network auditing tool that allows you to monitor, manipulate, and inject customized IPv4 traffic"
HOMEPAGE="http://www.packetfactory.net/projects/packit/"
SRC_URI="http://www.packetfactory.net/projects/packit/downloads/${P}.tgz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="x86"
IUSE=""

DEPEND="=net-libs/libnet-1.1.1*"

src_install() {
	make install DESTDIR=${D} || die
	dodoc INSTALL LICENSE VERSION docs/*
}
