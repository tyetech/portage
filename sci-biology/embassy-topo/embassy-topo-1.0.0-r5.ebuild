# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sci-biology/cvs-repo/gentoo-x86/sci-biology/embassy-topo/embassy-topo-1.0.0-r5.ebuild,v 1.1 2008/08/27 19:33:10 ribosome Exp $

EBOV="6.0.1"

inherit embassy

DESCRIPTION="EMBOSS integrated version of TOPO - Transmembrane protein display"
SRC_URI="ftp://emboss.open-bio.org/pub/EMBOSS/EMBOSS-${EBOV}.tar.gz
	mirror://gentoo/embassy-${EBOV}-${PN:8}-${PV}.tar.gz"

KEYWORDS="~amd64 ~ppc ~sparc ~x86"
