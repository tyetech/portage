# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sci-biology/cvs-repo/gentoo-x86/sci-biology/embassy-phylipnew/Attic/embassy-phylipnew-3.6b.ebuild,v 1.6 2007/02/15 20:00:31 je_fro Exp $

EBOV="4.0.0"

inherit embassy

DESCRIPTION="EMBOSS integrated version of the PHYLogeny Inference Package"
LICENSE="freedist"
SRC_URI="ftp://emboss.open-bio.org/pub/EMBOSS/EMBOSS-${EBOV}.tar.gz
	mirror://gentoo/embassy-${EBOV}-${PN:8}-${PV}.tar.gz"

KEYWORDS="~amd64 ppc ~sparc x86"
