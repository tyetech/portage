# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/xfce-base/cvs-repo/gentoo-x86/xfce-base/libxfce4util/Attic/libxfce4util-4.2.1.ebuild,v 1.1 2005/03/17 02:50:32 bcowan Exp $

DESCRIPTION="Libraries for Xfce 4"
LICENSE="LGPL-2"
KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~mips ~ppc ~ppc64 ~sparc ~x86"
IUSE="doc"

RDEPEND="doc? ( dev-util/gtk-doc )"
XFCE_CONFIG="`use_enable doc gtk-doc`"

inherit xfce4
