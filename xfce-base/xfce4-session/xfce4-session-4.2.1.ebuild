# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/xfce-base/cvs-repo/gentoo-x86/xfce-base/xfce4-session/Attic/xfce4-session-4.2.1.ebuild,v 1.1 2005/03/17 03:00:24 bcowan Exp $

DESCRIPTION="Xfce 4 session manager"
KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~mips ~ppc ~ppc64 ~sparc ~x86"

RDEPEND="~xfce-base/xfce-utils-${PV}"
SINGLE_MAKE=1

inherit xfce4
