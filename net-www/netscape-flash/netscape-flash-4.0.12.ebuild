# Copyright 1999-2000 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License, v2 or later
# $Header: /usr/local/ssd/gentoo-x86/output/net-www/cvs-repo/gentoo-x86/net-www/netscape-flash/Attic/netscape-flash-4.0.12.ebuild,v 1.2 2002/07/11 06:30:49 drobbins Exp $

A=flash_linux.tar.gz
S=${WORKDIR}/Linux
DESCRIPTION="Macromedia Shockwave Flash Player"
SRC_URI="http://???"${A}
HOMEPAGE="http://macromedia.com"

src_install() {                               
  cd ${S}
  dodir /opt/netscape/plugins
  insinto /opt/netscape/plugins
  doins *.class *.so
  dodoc README.Linux
}
