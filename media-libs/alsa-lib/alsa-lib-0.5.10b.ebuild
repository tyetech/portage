# Copyright 1999-2000 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License, v2 or later
# Author Achim Gottinger <achim@gentoo.org>
# $Header: /usr/local/ssd/gentoo-x86/output/media-libs/cvs-repo/gentoo-x86/media-libs/alsa-lib/Attic/alsa-lib-0.5.10b.ebuild,v 1.1 2001/10/30 05:04:55 lordjoe Exp $

S=${WORKDIR}/${P}
DESCRIPTION="Advanced Linux Sound Architecture / Library"
SRC_URI="ftp://ftp.alsa-project.org/pub/lib/${P}.tar.bz2"
HOMEPAGE="http://www.alsa-project.org/"

DEPEND="virtual/glibc virtual/alsa"
RDEPEND="virtual/glibc"

src_compile() {                           

  ./configure --host=${CHOST} --prefix=/usr || die
  make || die

}

src_install() {

  make DESTDIR=${D} install || die
  dodoc ChangeLog COPYING

}




