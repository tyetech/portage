# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-irc/cvs-repo/gentoo-x86/net-irc/xchat-systray/Attic/xchat-systray-2.3.1.ebuild,v 1.7 2004/06/24 23:10:23 agriffis Exp $

S=${WORKDIR}/${PN}-plugin_${PV}
DESCRIPTION="KDE/GNOME system tray plugin for X-Chat."
SRC_URI="http://blight.altervista.org/Downloads/${PN}-plugin_${PV}.tar.gz"
HOMEPAGE="http://blight.altervista.org/"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86 ~ppc ~sparc ~alpha hppa"
IUSE=""

RDEPEND=">=dev-libs/glib-2.0.3
	>=x11-libs/gtk+-2.0.3
	sys-devel/gettext"

DEPEND="${RDEPEND}
	>=dev-util/pkgconfig-0.7
	>=net-irc/xchat-2.0.3"

src_compile() {

	MAKEOPTS="-j1" emake || die "Compile failed"
}

src_install() {
	insinto /usr/lib/xchat/plugins
	doins systray.so
}
