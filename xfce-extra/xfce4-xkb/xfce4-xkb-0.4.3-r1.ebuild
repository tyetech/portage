# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/xfce-extra/cvs-repo/gentoo-x86/xfce-extra/xfce4-xkb/Attic/xfce4-xkb-0.4.3-r1.ebuild,v 1.1 2007/02/01 22:27:29 welp Exp $

inherit xfce44

xfce44_beta
xfce44_goodies_panel_plugin

DESCRIPTION="Xfce4 panel xkb layout switching plugin"
KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~mips ~ppc ~ppc64 ~sparc ~x86"
DEPEND="xfce-base/xfce4-panel \
	x11-proto/kbproto \
	dev-libs/glib"
RDEPEND="${DEPEND}"
