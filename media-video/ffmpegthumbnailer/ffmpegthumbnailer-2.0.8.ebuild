# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-video/cvs-repo/gentoo-x86/media-video/ffmpegthumbnailer/ffmpegthumbnailer-2.0.8.ebuild,v 1.1 2012/09/20 09:54:45 ssuominen Exp $

EAPI=4
inherit eutils libtool

DESCRIPTION="Lightweight video thumbnailer that can be used by file managers"
HOMEPAGE="http://code.google.com/p/ffmpegthumbnailer/"
SRC_URI="http://${PN}.googlecode.com/files/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~ppc ~ppc64 ~sparc ~x86 ~x86-fbsd"
IUSE="gnome gtk jpeg png"

COMMON_DEPEND=">=virtual/ffmpeg-0.10.2
	png? ( media-libs/libpng:0 )
	jpeg? ( virtual/jpeg )"
RDEPEND="${COMMON_DEPEND}
	gtk? ( >=dev-libs/glib-2.30 )"
DEPEND="${COMMON_DEPEND}
	virtual/pkgconfig"
REQUIRED_USE="gnome? ( gtk )"

DOCS="AUTHORS ChangeLog README"

src_prepare() {
	elibtoolize
}

src_configure() {
	econf \
		--disable-static \
		$(use_enable png) \
		$(use_enable jpeg) \
		$(use_enable gtk gio) \
		$(use_enable gnome thumbnailer)
}

src_install() {
	default
	prune_libtool_files --all
}
