# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-libs/cvs-repo/gentoo-x86/media-libs/libshout/libshout-2.3.1.ebuild,v 1.10 2012/10/05 09:14:45 ssuominen Exp $

EAPI=4
inherit eutils

DESCRIPTION="library for connecting and sending data to icecast servers"
HOMEPAGE="http://www.icecast.org/"
SRC_URI="http://downloads.xiph.org/releases/${PN}/${P}.tar.gz"

LICENSE="LGPL-2"
SLOT="0"
KEYWORDS="alpha amd64 arm hppa ia64 ppc ppc64 sh sparc x86 ~x86-fbsd"
IUSE="speex static-libs theora"

RDEPEND="media-libs/libogg
	media-libs/libvorbis
	speex? ( media-libs/speex )
	theora? ( media-libs/libtheora )"
DEPEND="${RDEPEND}
	virtual/pkgconfig"

src_configure() {
	econf \
		$(use_enable static-libs static) \
		$(use_enable theora) \
		$(use_enable speex)
}

src_install() {
	emake DESTDIR="${D}" install
	dodoc README examples/example.c
	rm -rf "${ED}"/usr/share/doc/${PN}
	prune_libtool_files
}
