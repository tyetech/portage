# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-wireless/cvs-repo/gentoo-x86/net-wireless/bluez-libs/Attic/bluez-libs-2.7.ebuild,v 1.6 2004/10/19 13:55:32 vapier Exp $

DESCRIPTION="Bluetooth Userspace Libraries"
HOMEPAGE="http://bluez.sourceforge.net/"
SRC_URI="http://bluez.sourceforge.net/download/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 hppa ppc ~sparc x86"
IUSE=""

DEPEND="!net-wireless/bluez-sdp"

src_install() {
	make DESTDIR=${D} install || die
}
