# Copyright 1999-2004 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/gnome-base/cvs-repo/gentoo-x86/gnome-base/libgnomeprintui/Attic/libgnomeprintui-2.5.4.ebuild,v 1.1 2004/03/21 16:11:07 foser Exp $

inherit gnome2

DESCRIPTION="user interface libraries for gnome print"
HOMEPAGE="http://www.gnome.org/"
LICENSE="GPL-2 LGPL-2.1"

SLOT="2.2"
KEYWORDS="~x86 ~ppc ~alpha ~sparc ~hppa ~amd64 ~ia64 ~mips"
IUSE="doc"

RDEPEND=">=x11-libs/gtk+-2.3.1
	=gnome-base/libgnomeprint-${PV}*
	>=gnome-base/libgnomecanvas-2"

DEPEND="${RDEPEND}
	sys-devel/gettext
	>=dev-util/pkgconfig-0.12.0
	doc? ( >=dev-util/gtk-doc-1 )"

DOCS="AUTHORS COPYING* ChangeLog INSTALL NEWS README"
