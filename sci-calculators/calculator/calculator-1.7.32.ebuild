# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sci-calculators/cvs-repo/gentoo-x86/sci-calculators/calculator/calculator-1.7.32.ebuild,v 1.1 2012/03/02 23:27:17 mabi Exp $

EAPI=4

inherit fox

DESCRIPTION="Scientific calculator based on the FOX Toolkit"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~hppa ~ppc ~ppc64 ~sparc ~x86"
IUSE=""

RDEPEND="~x11-libs/fox-${PV}"
DEPEND="${RDEPEND}"
