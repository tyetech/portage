# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/xfce-extra/cvs-repo/gentoo-x86/xfce-extra/xfce4-eyes/Attic/xfce4-eyes-4.4.0.ebuild,v 1.1 2007/02/04 19:12:15 drac Exp $

inherit xfce44

xfce44
xfce44_goodies_panel_plugin

DESCRIPTION="Eyes is a panel plugin that adds eyes which watch your every step."
KEYWORDS="~x86"
IUSE="debug"

DEPEND="dev-util/pkgconfig
	dev-util/intltool"

DOCS="AUTHORS ChangeLog NEWS README"
