# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/xfce-base/cvs-repo/gentoo-x86/xfce-base/libxfce4util/Attic/libxfce4util-4.4.0.ebuild,v 1.2 2007/01/25 19:21:35 welp Exp $

inherit xfce44

xfce44

DESCRIPTION="Libraries for Xfce4"
LICENSE="LGPL-2"
KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~mips ~ppc ~ppc64 ~sparc ~x86"
IUSE="debug doc"

RDEPEND=">=dev-libs/glib-2"
DEPEND="${RDEPEND}
	doc? ( >=dev-util/gtk-doc-1 )"

XFCE_CONFIG="${XFCE_CONFIG} $(use_enable doc gtk-doc)"

xfce44_core_package
