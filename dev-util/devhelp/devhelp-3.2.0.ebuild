# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-util/cvs-repo/gentoo-x86/dev-util/devhelp/devhelp-3.2.0.ebuild,v 1.9 2012/07/15 18:38:42 armin76 Exp $

EAPI="4"
GCONF_DEBUG="no"
GNOME2_LA_PUNT="yes"
PYTHON_DEPEND="2"

inherit eutils gnome2 python toolchain-funcs

DESCRIPTION="An API documentation browser for GNOME"
HOMEPAGE="http://live.gnome.org/devhelp"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~alpha amd64 ~ia64 ppc sparc x86 ~x86-fbsd"
IUSE=""

COMMON_DEPEND=">=gnome-base/gconf-2.6:2
	>=dev-libs/glib-2.25.11:2
	>=x11-libs/gtk+-3.0.2:3
	x11-libs/libwnck:3
	net-libs/webkit-gtk:3"
# libgnome is needed for /desktop/gnome/interface/* gconf keys
RDEPEND="${COMMON_DEPEND}
	gnome-base/libgnome"
DEPEND="${COMMON_DEPEND}
	>=sys-devel/gettext-0.17
	>=dev-util/intltool-0.40
	virtual/pkgconfig"

pkg_setup() {
	DOCS="AUTHORS NEWS README"
	# ICC is crazy, silence warnings (bug #154010)
	if [[ $(tc-getCC) == "icc" ]] ; then
		G2CONF="${G2CONF} --with-compile-warnings=no"
	fi
	python_set_active_version 2
	python_pkg_setup
}

src_prepare() {
	gnome2_src_prepare

	# disable pyc compiling
	echo '#!/bin/sh' > build-aux/py-compile
}

pkg_preinst() {
	gnome2_pkg_preinst
	preserve_old_lib /usr/$(get_libdir)/libdevhelp-2.so.1
}

pkg_postinst() {
	gnome2_pkg_postinst
	python_need_rebuild
	python_mod_optimize /usr/$(get_libdir)/gedit/plugins
	# Keep all the notify calls around so that users get reminded to delete them
	preserve_old_lib_notify /usr/$(get_libdir)/libdevhelp-1.so.1
	preserve_old_lib_notify /usr/$(get_libdir)/libdevhelp-2.so.1
}

pkg_postrm() {
	gnome2_pkg_postrm
	python_mod_cleanup /usr/$(get_libdir)/gedit/plugins
}
