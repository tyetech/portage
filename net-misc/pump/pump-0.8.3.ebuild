# Copyright 1999-2001 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License, v2 or later
# Author Ben Lutgens <lamer@gentoo.org>
# $Header: /usr/local/ssd/gentoo-x86/output/net-misc/cvs-repo/gentoo-x86/net-misc/pump/Attic/pump-0.8.3.ebuild,v 1.3 2001/07/15 01:29:48 lamer Exp $
A=pump_0.8.3.orig.tar.gz
S=${WORKDIR}/${P}
DESCRIPTION="This is the DHCP/BOOTP client written by RedHat."
SRC_URI="http://ftp.debian.org/debian/pool/main/p/pump/${A}"
HOMEPAGE="http://ftp.debian.org/debian/pool/main/p/pump/"
DEPEND=""

#RDEPEND=""

src_compile() {
	try make pump
}

src_install () {
	 exeinto /sbin
	 doexe pump
	 insinto /etc
	 doins ${FILESDIR}/pump.conf
	 doman pump.8
	 dodoc COPYING CREDITS 
}

