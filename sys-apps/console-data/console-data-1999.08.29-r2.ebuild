# Copyright 1999-2000 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License, v2 or later
# Author Daniel Robbins <drobbins@gentoo.org>
# $Header: /usr/local/ssd/gentoo-x86/output/sys-apps/cvs-repo/gentoo-x86/sys-apps/console-data/Attic/console-data-1999.08.29-r2.ebuild,v 1.1 2001/02/07 15:51:27 achim Exp $

S=${WORKDIR}/${P}
DESCRIPTION="Data (fonts, keymaps) for the consoletools package"
SRC_URI="ftp://metalab.unc.edu/pub/Linux/system/keyboards/${P}.tar.gz"
HOMEPAGE="http://altern.org/ydirson/en/lct/data.html"

src_compile() {

	try ./configure --host=${CHOST} --prefix=/usr
	# do not use pmake
	try make

}

src_install() {

    try make DESTDIR=${D} install

    dodoc ChangeLog
    docinto txt
    dodoc doc/README.*
    docinto txt/fonts
    dodoc doc/fonts/*
    docinto txt/keymaps
    dodoc doc/keymaps/*


}


