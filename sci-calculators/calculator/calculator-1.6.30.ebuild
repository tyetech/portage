# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sci-calculators/cvs-repo/gentoo-x86/sci-calculators/calculator/Attic/calculator-1.6.30.ebuild,v 1.2 2007/11/21 16:50:21 jer Exp $

inherit fox

DESCRIPTION="Scientific calculator based on the FOX Toolkit"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~alpha ~amd64 hppa ~ppc ~ppc64 ~sparc ~x86"
IUSE=""

RDEPEND="~x11-libs/fox-${PV}"
