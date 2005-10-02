# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-admin/cvs-repo/gentoo-x86/app-admin/mbr/Attic/mbr-1.1.8.ebuild,v 1.2 2005/10/02 14:24:11 swegener Exp $

DESCRIPTION="A replacement master boot record for IBM-PC compatible computers"
HOMEPAGE="http://www.chiark.greenend.org.uk/~neilt/mbr/"
SRC_URI="http://www.chiark.greenend.org.uk/~neilt/mbr/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86 -ppc -sparc -alpha"
IUSE=""

DEPEND="sys-devel/bin86"

src_install() {
	dosbin install-mbr || die
	doman install-mbr.8
	dodoc AUTHORS ChangeLog INSTALL install-mbr.8 NEWS README TODO
}

pkg_postinst() {
	einfo "To install the MBR, run /sbin/install-mbr"
}
