# Copyright 1999-2004 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-cpp/cvs-repo/gentoo-x86/dev-cpp/libglademm/Attic/libglademm-2.4.0.ebuild,v 1.2 2004/05/21 14:09:49 khai Exp $

inherit gnome2
IUSE=""
DESCRIPTION="C++ bindings for libglade"
HOMEPAGE="http://gtkmm.sourceforge.net/"
SRC_URI="ftp://ftp.gnome.org/pub/GNOME/sources/libglademm/2.4/${P}.tar.bz2"

LICENSE="LGPL-2.1"
SLOT="2.4"
KEYWORDS="~x86"

RDEPEND=">=gnome-base/libglade-2
	>=dev-cpp/gtkmm-2.4"
DEPEND=">=dev-util/pkgconfig-0.12.0
	${RDEPEND}"

DOCS="AUTHORS COPYING ChangeLog NEWS README TODO INSTALL"
