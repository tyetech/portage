# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-accessibility/cvs-repo/gentoo-x86/app-accessibility/at-spi2-core/at-spi2-core-2.2.3.ebuild,v 1.9 2012/10/14 15:08:02 blueness Exp $

EAPI="4"
GCONF_DEBUG="no"
GNOME2_LA_PUNT="yes"

inherit eutils gnome2

DESCRIPTION="D-Bus accessibility specifications and registration daemon"
HOMEPAGE="http://live.gnome.org/Accessibility"

LICENSE="LGPL-2+"
SLOT="2"
KEYWORDS="amd64 arm ~hppa ~ppc64 x86 ~amd64-fbsd"
IUSE="doc +introspection"

RDEPEND=">=dev-libs/glib-2.28:2
	>=sys-apps/dbus-1
	x11-libs/libX11
	x11-libs/libXi
	x11-libs/libXtst
	introspection? ( >=dev-libs/gobject-introspection-0.9.6 )
"
DEPEND="${RDEPEND}
	>=dev-util/intltool-0.40
	doc? ( >=dev-util/gtk-doc-1.9 )
"

pkg_setup() {
	DOCS="AUTHORS ChangeLog NEWS README"
	# xevie is deprecated/broken since xorg-1.6/1.7
	G2CONF="${G2CONF} --disable-xevie"
}

src_prepare() {
	# disable teamspaces test since that requires Novell.ICEDesktop.Daemon
	epatch "${FILESDIR}/${PN}-2.0.2-disable-teamspaces-test.patch"

	gnome2_src_prepare
}
