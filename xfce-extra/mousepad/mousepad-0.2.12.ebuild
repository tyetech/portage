# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/xfce-extra/cvs-repo/gentoo-x86/xfce-extra/mousepad/Attic/mousepad-0.2.12.ebuild,v 1.1 2007/01/25 19:21:55 welp Exp $

inherit xfce44

xfce44
xfce44_extra_package

DESCRIPTION="Xfce4 text editor"
HOMEPAGE="http://www.xfce.org"
KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~mips ~ppc ~ppc64 ~sparc ~x86"
IUSE="debug"

RDEPEND=">=x11-libs/gtk+-2.2
	>=xfce-base/libxfce4util-${XFCE_MASTER_VERSION}
	>=xfce-base/libxfcegui4-${XFCE_MASTER_VERSION}"
