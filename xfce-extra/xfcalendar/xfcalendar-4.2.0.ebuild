# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/xfce-extra/cvs-repo/gentoo-x86/xfce-extra/xfcalendar/Attic/xfcalendar-4.2.0.ebuild,v 1.6 2005/02/01 17:38:29 bcowan Exp $

DESCRIPTION="Xfce4 calendar"
KEYWORDS="~alpha amd64 ~arm hppa ~ia64 ~mips ppc ~ppc64 sparc x86"

BZIPPED=1
RDEPEND="~xfce-base/xfce4-panel-${PV}"
inherit xfce4
