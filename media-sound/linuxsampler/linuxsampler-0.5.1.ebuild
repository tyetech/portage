# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-sound/cvs-repo/gentoo-x86/media-sound/linuxsampler/linuxsampler-0.5.1.ebuild,v 1.5 2012/05/05 08:33:38 mgorny Exp $

inherit autotools eutils

DESCRIPTION="LinuxSampler is a software audio sampler engine with professional grade features."
HOMEPAGE="http://www.linuxsampler.org/"
SRC_URI="http://download.linuxsampler.org/packages/${P}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="doc jack sqlite"

RDEPEND="sqlite? ( >=dev-db/sqlite-3.3 )
	>=media-libs/libgig-3.2.1
	media-libs/alsa-lib
	jack? ( media-sound/jack-audio-connection-kit )"
DEPEND="${RDEPEND}
	virtual/pkgconfig
	doc? ( app-doc/doxygen )"

src_unpack() {
	unpack ${A}
	cd "${S}"

	epatch "${FILESDIR}/${P}-pkgconfiginit.patch"
	epatch "${FILESDIR}/${P}-libtool22.patch"
	epatch "${FILESDIR}/${P}-gcc43.patch"
	AT_M4DIR="m4" eautoreconf
}

src_compile() {
	econf --enable-alsa-driver \
		$(use_enable jack jack-driver) \
		$(use_enable sqlite instruments-db)
	emake -j1 || die "emake failed."

	if use doc; then
		emake -j1 docs || die "emake docs failed."
	fi
}

src_install() {
	emake DESTDIR="${D}" install || die "emake install failed."
	dodoc AUTHORS ChangeLog NEWS README

	if use doc; then
		dohtml -r doc/html/*
	fi
}
