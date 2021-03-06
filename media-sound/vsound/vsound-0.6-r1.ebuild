# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-sound/cvs-repo/gentoo-x86/media-sound/vsound/vsound-0.6-r1.ebuild,v 1.6 2011/06/02 07:18:37 radhermit Exp $

EAPI=4

inherit eutils toolchain-funcs autotools

DESCRIPTION="A virtual audio loopback cable"
HOMEPAGE="http://www.vsound.org/"
SRC_URI="http://www.vsound.org/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 ~ppc sparc x86"
IUSE=""

RDEPEND=">=media-sound/sox-14.2.0"
DEPEND="${RDEPEND}"

src_prepare() {
	epatch "${FILESDIR}"/${P}-stdout.patch
	AT_M4DIR="." eautoreconf
}

src_compile() {
	emake CC=$(tc-getCC) CFLAGS="${CFLAGS}"
}

src_install() {
	default

	find "${D}" -name '*.la' -delete
}

pkg_postinst() {
	elog
	elog "To use this program to, for instance, record audio from realplayer:"
	elog "vsound realplay realmediafile.rm"
	elog
	elog "Or, to listen to realmediafile.rm at the same time:"
	elog "vsound -d realplay realmediafile.rm"
	elog
	elog "See ${HOMEPAGE} or /usr/share/doc/${PF}/README.bz2 for more info"
	elog
}
