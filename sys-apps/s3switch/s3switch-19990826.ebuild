#Copyright 2002 Gentoo Technologies, Inc.
#Distributed under the terms of the GNU General Public License, v2 or later
#$Header: /usr/local/ssd/gentoo-x86/output/sys-apps/cvs-repo/gentoo-x86/sys-apps/s3switch/Attic/s3switch-19990826.ebuild,v 1.3 2002/07/16 20:10:22 seemant Exp $

DESCRIPTION="S3 video chipset output selection utility"
HOMEPAGE="http://www.probo.com/timr/savage40.html"
KEYWORDS="x86"
SLOT="0"
LICENSE=""

SRC_URI="http://www.probo.com/timr/s3ssrc.zip"
S=${WORKDIR}

RDEPEND="virtual/glibc
	app-arch/unzip"
DEPEND="$RDEPEND"

src_compile() {
	make || die
}

src_install () {
	dobin s3switch
	doman s3switch.1x
}



