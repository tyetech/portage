# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sci-astronomy/cvs-repo/gentoo-x86/sci-astronomy/stellarium/Attic/stellarium-0.5.2.ebuild,v 1.2 2005/02/11 17:45:45 mr_bones_ Exp $

inherit eutils

DESCRIPTION="Stellarium renders 3D photo-realistic skies in real time."
HOMEPAGE="http://stellarium.free.fr/"
SRC_URI="http://stellarium.free.fr/download/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="x86"
IUSE=""

DEPEND="virtual/x11
	virtual/opengl
	media-libs/libsdl"

src_unpack() {
	# Configure script is in DOS format for some reason
	unpack ${A}
	cd ${S}
	edos2unix configure
	chmod 755 configure
}

src_install() {
	einstall || die
	dodoc AUTHORS ChangeLog INSTALL README TODO || die "dodoc failed"
}
