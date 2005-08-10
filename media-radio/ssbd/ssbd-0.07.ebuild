# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-radio/cvs-repo/gentoo-x86/media-radio/ssbd/Attic/ssbd-0.07.ebuild,v 1.1 2005/08/10 21:55:37 killsoft Exp $

DESCRIPTION="SSB Voice Keyer Daemon for tucnak"
HOMEPAGE="http://tucnak.nagano.cz/tucnak1en.html"
SRC_URI="http://tucnak.nagano.cz/${P}.tar.gz"
LICENSE="GPL-2"

SLOT="0"
KEYWORDS="~x86 ~ppc"
IUSE=""

RDEPEND="virtual/libc
	media-libs/libsndfile
	>=dev-libs/glib-1.2"

src_compile() {
	econf || die "econf failed"
	emake || die "emake failed"
}

src_install() {
	make DESTDIR=${D} install || die "install failed"
}
