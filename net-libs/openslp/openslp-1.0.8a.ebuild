# Copyright 1999-2002 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License, v2 or later
# Author Achim Gottinger <achim@gentoo.org>
# $Header: /usr/local/ssd/gentoo-x86/output/net-libs/cvs-repo/gentoo-x86/net-libs/openslp/Attic/openslp-1.0.8a.ebuild,v 1.1 2002/04/27 23:59:10 seemant Exp $

S=${WORKDIR}/${P}
DESCRIPTION="An open-source implementation of Service Location Protocol"
SRC_URI="http://prdownloads.sourceforge.net/openslp/${P}.tar.gz"
HOMEPAGE="http://www.openslp.org"

DEPEND="virtual/glibc"

src_compile() {
	
	econf || die
    make || die

}

src_install () {

    einstall || die
    dodoc AUTHORS COPYING ChangeLog NEWS README* THANKS 
    rm -rf ${D}/usr/doc
    dohtml -r .

}
