# Copyright 1999-2000 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License, v2 or later
# Author Achim Gottinger <achim@gentoo.org>
# $Header: /usr/local/ssd/gentoo-x86/output/net-misc/cvs-repo/gentoo-x86/net-misc/snarf/Attic/snarf-7.0-r1.ebuild,v 1.2 2000/08/16 04:38:20 drobbins Exp $

P=snarf-7.0
A=${P}.tar.gz
S=${WORKDIR}/${P}
DESCRIPTION="A full featured small web-spider"
SRC_URI="http://www.xach.com/snarf/"${A}
HOMEPAGE="http://www.xach.com/snarf/"

src_compile() {                           
  cd ${S}
  ./configure --host=${CHOST} --prefix=/usr
  make
}

src_install() {                               
  cd ${S}
  into /usr
  dobin snarf
  doman snarf.1
  dodoc COPYING ChangeLog README TODO
}




