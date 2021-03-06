# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-misc/cvs-repo/gentoo-x86/x11-misc/qtnotifydaemon/qtnotifydaemon-1.0.14.ebuild,v 1.4 2012/08/06 15:23:23 kensington Exp $

EAPI=4
inherit qt4-r2

DESCRIPTION="A flexible and configurable notification daemon"
HOMEPAGE="http://sourceforge.net/projects/qtnotifydaemon/"
SRC_URI="mirror://sourceforge/${PN}/${PN}_${PV}.orig.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="x11-libs/libX11
	x11-libs/qt-dbus:4
	x11-libs/qt-gui:4
	x11-libs/qt-qt3support:4
	!x11-misc/notification-daemon
	!x11-misc/notify-osd"
DEPEND="${RDEPEND}"

S=${WORKDIR}

PATCHES=( "${FILESDIR}/${P}-build.patch" )

src_install() {
	dobin ${PN}

	insinto /usr/share/dbus-1/services
	doins org.freedesktop.Notifications.service

	doman debian/${PN}.1
}
