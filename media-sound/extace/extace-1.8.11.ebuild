# Copyright 1999-2003 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-sound/cvs-repo/gentoo-x86/media-sound/extace/Attic/extace-1.8.11.ebuild,v 1.1 2003/08/21 08:41:15 avenj Exp $

DESCRIPTION="eXtace is an ESD audio visualization application"
HOMEPAGE="http://extace.sourceforge.net"
SRC_URI="mirror://sourceforge/extace/extace-1.8.11.tar.gz"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86"
IUSE=""

DEPEND="media-sound/esound
	dev-libs/fftw"

S=${WORKDIR}/${P}

src_compile() {
	econf || die
	emake || die
}

src_install() {
	einstall || die
}
