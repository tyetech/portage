# Copyright 1999-2004 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-misc/cvs-repo/gentoo-x86/x11-misc/xbindkeys/Attic/xbindkeys-1.6.4.ebuild,v 1.2 2004/01/04 03:49:52 port001 Exp $

IUSE=""

DESCRIPTION="Tool for launching commands on keystrokes"
SRC_URI="http://hocwp.free.fr/xbindkeys/${P}.tar.gz"
HOMEPAGE="http://hocwp.free.fr/xbindkeys/"
LICENSE="GPL-2"
KEYWORDS="x86 sparc"
SLOT="0"

DEPEND=">=x11-base/xfree-4.1.0
	dev-lang/tk"

src_compile() {
	./configure --prefix=/usr \
		--mandir=/usr/share/man || die "./configure failed"
	emake DESTDIR=${D} || die

}

src_install() {
	emake DESTDIR=${D} \
		BINDIR=/usr/bin install || die "Installation failed"

}

