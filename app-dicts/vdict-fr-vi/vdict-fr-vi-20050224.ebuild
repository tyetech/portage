# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-dicts/cvs-repo/gentoo-x86/app-dicts/vdict-fr-vi/Attic/vdict-fr-vi-20050224.ebuild,v 1.3 2007/01/25 04:57:00 genone Exp $

SLOT="0"
LICENSE="GPL-2"
KEYWORDS="x86"
DESCRIPTION="Vdict - Dictionaries files"
SRC_URI="mirror://sourceforge/xvnkb/fr-vi.src.bz2"
HOMEPAGE="http://xvnkb.sourceforge.net/?menu=vdict&lang=en"
IUSE=""
DEPEND="app-dicts/vdict"
S=${WORKDIR}
src_compile() {
	wd2vd -s fr-vi.src -d fr-vi.vdbf -i fr-vi.vdbi -x "French-Vietnamese"
}

src_install() {
	insinto /usr/share/dict
	doins fr-vi.vdbf fr-vi.vdbi
}
pkg_postinst() {
	elog "Please do search for dictionaries in vdict"
}
