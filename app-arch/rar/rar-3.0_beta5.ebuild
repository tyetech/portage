# Copyright 1999-2002 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License, v2 or later
# Maintainer: Matthew Kennedy <mkennedy@gentoo.org>
# Author: Matthew Kennedy <mkennedy@gentoo.org>
# $Header: /usr/local/ssd/gentoo-x86/output/app-arch/cvs-repo/gentoo-x86/app-arch/rar/Attic/rar-3.0_beta5.ebuild,v 1.1 2002/04/14 11:08:11 mkennedy Exp $

S=${WORKDIR}/rar

DESCRIPTION="RAR compressor/uncompressor"
SRC_URI="ftp://ftp.elf.stuba.sk/pub/pc/pack/rarl30b5.tgz"
HOMEPAGE="http://www.rarsoft.com"

RDEPEND="virtual/glibc"

src_install () {
	dodir /opt/${PN}
	for i in bin etc lib 
	do
		dodir /opt/${PN}/${i}
	done

	exeinto /opt/${PN}/bin
	doexe rar unrar
	insinto /opt/${PN}/lib
	doins default.sfx
	insinto /opt/${PN}/etc
	doins rarfiles.lst

	dodoc *.{txt,diz}

	dodir /etc/env.d
	insinto /etc/env.d
	doins ${FILESDIR}/10rar
}
