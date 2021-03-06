# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/gnome-extra/cvs-repo/gentoo-x86/gnome-extra/gnome-system-monitor/gnome-system-monitor-2.28.2.ebuild,v 1.10 2012/05/05 06:25:23 jdhore Exp $

EAPI="3"
GCONF_DEBUG="no"

inherit gnome2

DESCRIPTION="The Gnome System Monitor"
HOMEPAGE="http://www.gnome.org/"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="alpha amd64 ia64 ppc ppc64 sparc x86 ~x86-fbsd"
IUSE=""

RDEPEND=">=dev-libs/glib-2.20:2
	>=gnome-base/gconf-2:2
	>=x11-libs/libwnck-2.5:1
	>=gnome-base/libgtop-2.23.1:2
	>=x11-libs/gtk+-2.20:2
	>=x11-themes/gnome-icon-theme-2.15.3
	>=dev-cpp/gtkmm-2.8:2.4
	>=dev-cpp/glibmm-2.16:2
	dev-libs/libxml2:2
	>=gnome-base/librsvg-2.12:2
	>=dev-libs/dbus-glib-0.70"

DEPEND="${RDEPEND}
	virtual/pkgconfig
	>=app-text/scrollkeeper-0.3.11
	>=dev-util/intltool-0.35
	app-text/gnome-doc-utils"

pkg_setup() {
	DOCS="AUTHORS ChangeLog NEWS README"
	G2CONF="${G2CONF} --disable-scrollkeeper"
}
