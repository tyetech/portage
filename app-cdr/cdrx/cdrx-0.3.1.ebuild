# Copyright 1999-2002 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# Author Ben Lutgens <lamer@gentoo.org> 
# $Header: /usr/local/ssd/gentoo-x86/output/app-cdr/cvs-repo/gentoo-x86/app-cdr/cdrx/Attic/cdrx-0.3.1.ebuild,v 1.4 2002/07/06 20:51:34 drobbins Exp $

S=${WORKDIR}
DESCRIPTION="Menu based front-end to mkisofs and cdrecord"
SRC_URI="mirror://sourceforge/cdrx/${P}.tar.gz"
HOMEPAGE="http://cdrx.sourceforge.net/"
SLOT="0"
DEPEND=">=app-cdr/cdrtools-1.11 sys-devel/perl"
LICENSE="GPL-2"

src_install () {
	
	dobin cdrx.pl
	dodoc README.txt TODO
	dohtml -r ./
}
