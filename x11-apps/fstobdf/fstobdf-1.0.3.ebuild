# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-apps/cvs-repo/gentoo-x86/x11-apps/fstobdf/Attic/fstobdf-1.0.3.ebuild,v 1.6 2009/05/20 13:35:29 ranger Exp $

# Must be before x-modular eclass is inherited
#SNAPSHOT="yes"

inherit x-modular

DESCRIPTION="generate BDF font from X font server"
KEYWORDS="amd64 ~arm ~mips ppc ~ppc64 ~s390 ~sh ~sparc x86 ~x86-fbsd"
IUSE=""
RDEPEND="x11-libs/libX11
	x11-libs/libFS"
DEPEND="${RDEPEND}"
