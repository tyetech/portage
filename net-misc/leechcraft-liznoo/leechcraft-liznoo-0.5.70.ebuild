# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-misc/cvs-repo/gentoo-x86/net-misc/leechcraft-liznoo/leechcraft-liznoo-0.5.70.ebuild,v 1.5 2012/08/10 16:36:33 maksbotan Exp $

EAPI="4"

inherit leechcraft

DESCRIPTION="UPower-based power manager for LeechCraft"

SLOT="0"
KEYWORDS="amd64 x86"
IUSE="debug"

DEPEND="~net-misc/leechcraft-core-${PV}
	sys-power/upower
	x11-libs/qwt:6
	x11-libs/qt-dbus:4
	virtual/leechcraft-trayarea"
RDEPEND="${DEPEND}"
