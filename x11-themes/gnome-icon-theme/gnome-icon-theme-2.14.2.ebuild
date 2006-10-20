# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-themes/cvs-repo/gentoo-x86/x11-themes/gnome-icon-theme/Attic/gnome-icon-theme-2.14.2.ebuild,v 1.14 2006/10/20 15:19:35 agriffis Exp $

inherit gnome2

DESCRIPTION="GNOME 2 default icon themes"
HOMEPAGE="http://www.gnome.org/"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="alpha amd64 arm hppa ia64 ppc ppc64 sh sparc x86"
IUSE=""

RDEPEND="x11-themes/hicolor-icon-theme"
DEPEND="${RDEPEND}
	  sys-devel/gettext
	>=dev-util/pkgconfig-0.19
	>=x11-misc/icon-naming-utils-0.6.7
	>=dev-util/intltool-0.29"

DOCS="AUTHORS ChangeLog NEWS TODO"
