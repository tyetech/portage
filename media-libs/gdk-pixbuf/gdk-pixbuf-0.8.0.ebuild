# Copyright 1999-2000 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License, v2 or later
# Author Achim Gottinger <achim@gentoo.org>
# $Header: /usr/local/ssd/gentoo-x86/output/media-libs/cvs-repo/gentoo-x86/media-libs/gdk-pixbuf/Attic/gdk-pixbuf-0.8.0.ebuild,v 1.3 2000/08/25 15:10:23 achim Exp $

P=gdk-pixbuf-0.8.0
A=${P}.tar.gz
S=${WORKDIR}/${P}
DESCRIPTION="GNOME Image Library"
SRC_URI="ftp://ftp.gnome.org/pub/GNOME/unstable/sources/gdk-pixbuf/"${A}


src_compile() {                           
  cd ${S}
  ./configure --host=${CHOST} --prefix=/opt/gnome 
  make
}

src_install() {                               
  cd ${S}
  make prefix=${D}/opt/gnome install
  dodoc AUTHORS COPYING* ChangeLog INSTALL README NEWS TODO
}



