# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-misc/cvs-repo/gentoo-x86/net-misc/linuxsms/Attic/linuxsms-0.77.ebuild,v 1.4 2004/06/24 23:54:31 agriffis Exp $


DESCRIPTION="A console perl script for sending SMS to cell phones"
SRC_URI="mirror://sourceforge/linuxsms/${P}.tar.gz"
HOMEPAGE="http://linuxsms.sourceforge.net/"
KEYWORDS="x86 ~ppc ~sparc s390"
LICENSE="GPL-2"
SLOT="0"
RESTRICT="nomirror"
IUSE=""
DEPEND=">=dev-lang/perl-5.6.1"

src_install () {
	dobin linuxsms

	doman linuxsms.1
	dodoc BUGS CHANGES COPYING INSTALL README README.ES TODO
}

pkg_postinst() {
	einfo "To run linuxsms, just type: linuxsms"
	einfo "Your config file will be located in ~/.linuxsms"
}
