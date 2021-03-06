# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-libs/cvs-repo/gentoo-x86/media-libs/libptp2/libptp2-1.1.10.ebuild,v 1.6 2011/03/20 18:15:50 ssuominen Exp $

EAPI=2
inherit autotools eutils

DESCRIPTION="Library and client for communicating with PTP enabled devices (e.g. digital photo cameras)."
HOMEPAGE="http://sourceforge.net/projects/libptp/"
SRC_URI="mirror://sourceforge/libptp/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 ppc ppc64 x86"
IUSE=""

RDEPEND="virtual/libusb:0"
DEPEND="${RDEPEND}"

src_prepare() {
	epatch \
		"${FILESDIR}"/${P}-makefile.patch \
		"${FILESDIR}"/${P}-configure.patch

	AT_M4DIR="m4" eautoreconf
}

src_test() {
	env LD_LIBRARY_PATH=./src/.libs/ ./src/ptpcam -l || die
}

src_install() {
	emake DESTDIR="${D}" install || die
}
