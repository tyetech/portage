# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-libs/cvs-repo/gentoo-x86/dev-libs/gdl/gdl-2.30.1.ebuild,v 1.10 2012/05/04 18:35:45 jdhore Exp $

EAPI="3"
GCONF_DEBUG="no"

inherit eutils gnome2 multilib

DESCRIPTION="The Gnome Devtool Libraries"
HOMEPAGE="http://www.gnome.org/"

LICENSE="LGPL-2.1"
SLOT="1"
KEYWORDS="alpha amd64 hppa ia64 ppc ppc64 sparc x86 ~x86-fbsd"
IUSE="doc"

RDEPEND=">=dev-libs/glib-2:2
	>=x11-libs/gtk+-2.12:2
	>=dev-libs/libxml2-2.4"
DEPEND="${RDEPEND}
	!<dev-python/gdl-python-2.19.1-r1
	!<=dev-python/gnome-python-extras-2.19.1-r2
	virtual/pkgconfig
	>=dev-util/intltool-0.35
	doc? ( >=dev-util/gtk-doc-1.4 )"

DOCS="AUTHORS ChangeLog MAINTAINERS NEWS README"
