# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sci-biology/cvs-repo/gentoo-x86/sci-biology/embassy-signature/embassy-signature-0.1.0-r4.ebuild,v 1.4 2011/10/20 08:50:16 xarthisius Exp $

EBOV="6.1.0"

inherit embassy

DESCRIPTION="Protein signature add-on package for EMBOSS"
SRC_URI="ftp://emboss.open-bio.org/pub/EMBOSS/old/${EBOV}/EMBOSS-${EBOV}.tar.gz
	mirror://gentoo/embassy-${EBOV}-${PN:8}-${PV}.tar.gz"

KEYWORDS="~amd64 ~ppc ~x86 ~x86-linux ~ppc-macos"
