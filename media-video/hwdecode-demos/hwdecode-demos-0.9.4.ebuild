# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-video/cvs-repo/gentoo-x86/media-video/hwdecode-demos/Attic/hwdecode-demos-0.9.4.ebuild,v 1.1 2010/10/10 21:15:25 aballier Exp $

EAPI=2

DESCRIPTION="Standalone programs showing off various HW acceleration APIs"
HOMEPAGE="http://www.splitted-desktop.com/~gbeauchesne/hwdecode-demos/"
SRC_URI="http://www.splitted-desktop.com/~gbeauchesne/hwdecode-demos/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE="opengl vaapi vdpau"

RDEPEND="media-video/ffmpeg
	opengl? ( virtual/opengl virtual/glu )
	vaapi? ( x11-libs/libva )
	vdpau? ( x11-libs/libvdpau )"
DEPEND="${RDEPEND}
	dev-util/pkgconfig"

src_configure() {
	econf \
		--disable-crystalhd \
		$(use_enable opengl glx) \
		$(use_enable vaapi) \
		$(use_enable vdpau) \
		--disable-xvba
}

src_install() {
	emake DESTDIR="${D}" install || die
	dodoc NEWS README
}
