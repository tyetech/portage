# Copyright 1999-2001 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License, v2 or later
# Author Parag Mehta <pm@gentoo.org>
# $Header: /usr/local/ssd/gentoo-x86/output/app-doc/cvs-repo/gentoo-x86/app-doc/howto-ps/Attic/howto-ps-20010823.ebuild,v 1.1 2001/08/23 10:32:22 pm Exp $

P="Linux-ps-HOWTOs"
S=${WORKDIR}/${P}

DESCRIPTION="The LDP howtos, postscript format."

SRC_URI="http://www.ibiblio.org/pub/Linux/docs/HOWTO/other-formats/ps/${P}-${PV}.tar.gz"

HOMEPAGE="http://www.linuxdoc.org"

src_install () {
    
    dodir /usr/share/doc/howto
    dodir /usr/share/doc/howto/ps
    dosym /usr/share/doc/howto /usr/share/doc/HOWTO
    
    cd ${WORKDIR}
    insinto /usr/share/doc/howto/ps
    doins *
    
}
