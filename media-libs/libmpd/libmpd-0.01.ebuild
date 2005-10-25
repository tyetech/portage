# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-libs/cvs-repo/gentoo-x86/media-libs/libmpd/Attic/libmpd-0.01.ebuild,v 1.6 2005/10/25 14:38:48 gustavoz Exp $

DESCRIPTION="A library handling connection to a MPD server."
HOMEPAGE="http://www.qballcow.nl/libmpd/"
SRC_URI="http://download.qballcow.nl/programs/${PN}/${P}.tar.gz"
LICENSE="GPL-2"

SLOT="0.01"
KEYWORDS="~amd64 ~ppc sparc x86"
IUSE=""
DEPEND="virtual/libc
		sys-devel/libtool"

src_install() {
	make DESTDIR="${D}" install || die "make install failed"
	dodoc README ChangeLog
}
