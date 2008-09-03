# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-misc/cvs-repo/gentoo-x86/x11-misc/touchcal/Attic/touchcal-0.31.ebuild,v 1.4 2008/09/03 15:21:22 rbu Exp $

DESCRIPTION="Touchscreen calibration utility"
HOMEPAGE="http://touchcal.sourceforge.net"
SRC_URI="mirror://sourceforge/${PN}/${P}.tar.gz"
LICENSE="GPL-2"

SLOT="0"
KEYWORDS="amd64 ~x86"
DEPEND="sys-libs/ncurses"
IUSE=""

src_install() {
	emake install DESTDIR="${D}" | die "failed to emake install"
	dodoc README ChangeLog
}
