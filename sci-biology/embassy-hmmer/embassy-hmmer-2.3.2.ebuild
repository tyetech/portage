# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sci-biology/cvs-repo/gentoo-x86/sci-biology/embassy-hmmer/Attic/embassy-hmmer-2.3.2.ebuild,v 1.4 2006/11/03 03:02:06 je_fro Exp $

EBOV="4.0.0"

inherit embassy

DESCRIPTION="EMBOSS integrated version of HMMER - Biological sequence analysis with profile HMMs"
SRC_URI="ftp://emboss.open-bio.org/pub/EMBOSS/EMBOSS-${EBOV}.tar.gz
	mirror://gentoo/embassy-${EBOV}-${PN:8}-${PV}.tar.gz"

KEYWORDS="~ppc ~sparc x86"

src_install() {
	embassy_src_install
	insinto /usr/include/emboss/hmmer
	doins src/*.h
}
