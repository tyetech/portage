# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-misc/cvs-repo/gentoo-x86/x11-misc/xsnap/Attic/xsnap-1.4.3.ebuild,v 1.1 2004/12/19 01:53:10 port001 Exp $

inherit eutils

DESCRIPTION="Program to interactively take a 'snapshot' of a region of the screen"
SRC_URI="ftp://ftp.ac-grenoble.fr/ge/Xutils/${P}.tar.bz2"
HOMEPAGE="ftp://ftp.ac-grenoble.fr/ge/Xutils/"

SLOT="0"
LICENSE="as-is"
KEYWORDS="~x86 ~ppc ~sparc ~amd64"
IUSE=""

DEPEND="virtual/x11"

src_compile() {
	xmkmf || die
	make || die
}

src_install() {
	make DESTDIR=${D} install || die
	make DESTDIR=${D} install.man || die
	dodoc README INSTALL AUTHORS
}
