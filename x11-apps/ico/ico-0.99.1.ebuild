# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-apps/cvs-repo/gentoo-x86/x11-apps/ico/Attic/ico-0.99.1.ebuild,v 1.1 2005/09/05 05:08:07 joshuabaergen Exp $

# Must be before x-modular eclass is inherited
SNAPSHOT="yes"

inherit x-modular

DESCRIPTION="X.Org ico application"
KEYWORDS="~arm ~s390 ~sparc ~x86"
RDEPEND=">=x11-libs/libX11-0.99.1"
DEPEND="${RDEPEND}"
