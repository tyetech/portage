# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-misc/cvs-repo/gentoo-x86/x11-misc/touchcal/Attic/touchcal-0.31.ebuild,v 1.3 2007/07/13 05:09:41 mr_bones_ Exp $

DESCRIPTION="Touchscreen calibration utility"
HOMEPAGE="http://touchcal.sourceforge.net"
SRC_URI="mirror://sourceforge/${PN}/${P}.tar.gz"
LICENSE="GPL-2"

SLOT="0"
KEYWORDS="amd64"
DEPEND="sys-libs/ncurses"

src_install() {
	emake install DESTDIR=${D}
	dodoc README ChangeLog
}
