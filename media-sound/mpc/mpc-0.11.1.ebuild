# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-sound/cvs-repo/gentoo-x86/media-sound/mpc/Attic/mpc-0.11.1.ebuild,v 1.5 2004/10/20 05:51:08 eradicator Exp $

IUSE=""

DESCRIPTION="A commandline client for Music Player Daemon (media-sound/mpd)"
SRC_URI="mirror://sourceforge/musicpd/${P}.tar.gz"
HOMEPAGE="http://www.musicpd.org"

KEYWORDS="x86 ~ppc sparc amd64"
SLOT="0"
LICENSE="GPL-2"

DEPEND="virtual/libc"

src_compile() {
	local myconf
	myconf="--with-gnu-ld"

	econf ${myconf} || die "could not configure"

	emake || die "emake failed"
}

src_install() {
	emake install DESTDIR="${D}" || die
	rm -rf ${D}/usr/share/doc/mpc/
	dodoc AUTHORS ChangeLog README doc/mpc-bashrc
}
