# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sci-astronomy/cvs-repo/gentoo-x86/sci-astronomy/stellarium/Attic/stellarium-0.6.1.ebuild,v 1.2 2005/02/11 17:45:45 mr_bones_ Exp $

DESCRIPTION="Stellarium renders 3D photo-realistic skies in real time."
HOMEPAGE="http://stellarium.free.fr/"
SRC_URI="mirror://sourceforge/stellarium/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="x86 ~ppc ~amd64"
IUSE=""

DEPEND="virtual/x11
	virtual/opengl
	media-libs/libsdl"

src_install() {
	make DESTDIR="${D}" install || die "make install failed"
	dodoc AUTHORS ChangeLog INSTALL README TODO
}
