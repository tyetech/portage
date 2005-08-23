# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-apps/cvs-repo/gentoo-x86/x11-apps/showfont/Attic/showfont-0.99.0.ebuild,v 1.3 2005/08/23 02:56:05 vapier Exp $

# Must be before x-modular eclass is inherited
#SNAPSHOT="yes"

inherit x-modular

DESCRIPTION="X.Org showfont application"
KEYWORDS="~arm ~s390 ~sparc ~x86"
RDEPEND="x11-libs/libFS"
DEPEND="${RDEPEND}"
