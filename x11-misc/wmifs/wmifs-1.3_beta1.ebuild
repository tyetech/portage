# Copyright (c) Vitaly Kushneriuk
# Distributed under the terms of the GNU General Public License, v2.
# Maintainer: Vitaly Kushneriuk<vitaly@gentoo.org>
# $Header: /usr/local/ssd/gentoo-x86/output/x11-misc/cvs-repo/gentoo-x86/x11-misc/wmifs/Attic/wmifs-1.3_beta1.ebuild,v 1.1 2002/02/03 13:46:51 vitaly Exp $

S=${WORKDIR}/wmifs.app/wmifs

DESCRIPTION="Network monitoring dock.app"
SRC_URI="http://linux.tucows.tierra.net/files/x11/dock/wmifs-1.3b1.tar.gz"
HOMEPAGE="http://www.linux.tucows.com"
DEPEND="virtual/glibc x11-base/xfree"

src_compile() {
	emake || die
}

src_install () {
	dobin wmifs
	insinto /usr/share/wmifs
	doins sample.wmifsrc
	cd ..
	dodoc BUGS  CHANGES  COPYING  HINTS  INSTALL  README  TODO
}
