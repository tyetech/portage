# Copyright 1999-2000 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License, v2 or later
# Author Achim Gottinger <achim@gentoo.org>
# $Header: /usr/local/ssd/gentoo-x86/output/gnome-office/cvs-repo/gentoo-x86/gnome-office/gnumeric/Attic/gnumeric-0.56.ebuild,v 1.3 2000/09/15 20:08:58 drobbins Exp $

P=gnumeric-0.56
A=${P}.tar.gz
S=${WORKDIR}/${P}
DESCRIPTION="gnumeric"
SRC_URI="ftp://ftp.gnome.org/pub/GNOME/stable/sources/gnumeric/"${A}
HOMEPAGE="http://www.gnome.org/gnome-office/gnumeric.shtml"

src_compile() {                           
  cd ${S}
  try ./configure --host=${CHOST} --prefix=/opt/gnome \
	--with-catgets --without-bonobo
  try make
}

src_install() {                               
  cd ${S}
  try make prefix=${D}/opt/gnome install
  dodoc AUTHORS COPYING *ChangeLog HACKING NEWS README TODO

}




