# Copyright 1999-2002 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-themes/cvs-repo/gentoo-x86/x11-themes/gnome-themes-extras/Attic/gnome-themes-extras-0.2.ebuild,v 1.1 2003/07/27 15:42:26 foser Exp $

inherit gnome2

DESCRIPTION="Additional themes for GNOME 2.2"
HOMEPAGE="http://librsvg.sourceforge.net/theme.php"

SLOT="0"
KEYWORDS="~x86"

LICENSE="LGPL-2.1 GPL-2 DSL"

RDEPEND=">=x11-libs/gtk+-2"

DEPEND="${RDEPEND}
	dev-util/pkgconfig
	>=dev-util/intltool-0.23"

DOCS="AUTHORS ChangeLog MAINTAINERS NEWS README TODO"
