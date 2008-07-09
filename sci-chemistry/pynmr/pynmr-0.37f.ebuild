# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sci-chemistry/cvs-repo/gentoo-x86/sci-chemistry/pynmr/Attic/pynmr-0.37f.ebuild,v 1.4 2008/07/09 21:05:43 markusle Exp $

inherit distutils

DESCRIPTION="An NMR Extension for PyMOL, written in Python"
HOMEPAGE="http://maple.rsvs.ulaval.ca/mediawiki/index.php/PyNMR"
SRC_URI="mirror://gentoo/${P}.tar.gz"

LICENSE="GPL-2"
IUSE=""
SLOT="0"
KEYWORDS="~x86"

DEPEND="<sci-chemistry/pymol-0.99"

src_install() {
	distutils_src_install
}
