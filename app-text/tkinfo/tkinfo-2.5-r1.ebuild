# Copyright 1999-2000 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License, v2 or later
# Author Ben Lutgens <lamer@gentoo.org>
# $Header: /usr/local/ssd/gentoo-x86/output/app-text/cvs-repo/gentoo-x86/app-text/tkinfo/Attic/tkinfo-2.5-r1.ebuild,v 1.2 2002/06/12 03:23:50 lamer Exp $

S=${WORKDIR}/${P}
DESCRIPTION="Info Browser in TK"
SRC_URI="http://math-www.uni-paderborn.de/~axel/tkinfo/${P}.tar.gz"
HOMEPAGE="http://math-www.uni-paderborn.de/~axel/tkinfo/"

DEPEND=">=dev-lang/tk-8.0.5"


src_install () {

    dobin tkinfo
    doman tkinfo.1
    dodoc README

}

pkg_postinst () {

# Let's check to see if info has been setup completely
cd /usr/share/info
if [ -f dir ]; then
	exit 0;
else
	mkinfodir . > dir
fi
}

