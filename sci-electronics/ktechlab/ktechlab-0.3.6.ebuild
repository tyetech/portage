# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sci-electronics/cvs-repo/gentoo-x86/sci-electronics/ktechlab/Attic/ktechlab-0.3.6.ebuild,v 1.5 2009/07/18 13:42:10 ssuominen Exp $

inherit kde

DESCRIPTION="KTechlab is a development and simulation environment for microcontrollers and electronic circuits"
HOMEPAGE="http://sourceforge.net/projects/ktechlab/"
SRC_URI="mirror://sourceforge/${PN}/${P}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 ~x86"
IUSE=""

RDEPEND=">=dev-embedded/gpsim-0.21.11
	<dev-embedded/gpsim-0.23.0"
DEPEND="${RDEPEND}"

need-kde 3.5

UNSERMAKE=""

S=${WORKDIR}/${PN}-0.3

PATCHES=( "${FILESDIR}/${PN}-0.3-gcc-4.1.patch"
	"${FILESDIR}/${P}-gcc42.patch"
	"${FILESDIR}/${P}-gcc43.patch" )
