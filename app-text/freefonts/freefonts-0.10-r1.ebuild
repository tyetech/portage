# Copyright 1999-2000 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License, v2 or later
# Author Achim Gottinger <achim@gentoo.org>
# $Header: /usr/local/ssd/gentoo-x86/output/app-text/cvs-repo/gentoo-x86/app-text/freefonts/Attic/freefonts-0.10-r1.ebuild,v 1.1 2001/04/13 14:04:36 achim Exp $

A=${P}.tar.gz
S=${WORKDIR}/freefont
DESCRIPTION="A Collection of True Type Fonts"
SRC_URI="ftp://ftp.gimp.org/pub/gimp/fonts/${A}"
HOMEPAGE="http://www.gimp.org"


src_install () {

    dodir /usr/X11R6/lib/X11/fonts/freefont
    cp -a * ${D}/usr/X11R6/lib/X11/fonts/freefont
    rm  ${D}/usr/X11R6/lib/X11/fonts/freefont/README
    dodoc README

}

