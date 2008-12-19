# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sci-electronics/cvs-repo/gentoo-x86/sci-electronics/ktechlab/Attic/ktechlab-0.3.6.ebuild,v 1.4 2008/12/19 20:51:00 loki_val Exp $

inherit kde

DESCRIPTION="KTechlab is a development and simulation environment for microcontrollers and electronic circuits"
HOMEPAGE="http://sourceforge.net/projects/ktechlab/"
SRC_URI="mirror://sourceforge/${PN}/${P}.tar.bz2"

LICENSE="GPL-2"
KEYWORDS="amd64 ~x86"

IUSE=""
SLOT="0"

DEPEND=">=dev-embedded/gpsim-0.21.11"

need-kde 3.2

UNSERMAKE=""

S="${WORKDIR}/${PN}-0.3"

PATCHES=(	"${FILESDIR}/${PN}-0.3-gcc-4.1.patch"
		"${FILESDIR}/${P}-gcc42.patch"
		"${FILESDIR}/${P}-gcc43.patch"
	)
