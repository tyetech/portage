# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-libs/cvs-repo/gentoo-x86/media-libs/libmms/Attic/libmms-0.4.ebuild,v 1.11 2010/06/08 17:08:24 ssuominen Exp $

EAPI=2
inherit eutils

DESCRIPTION="Common library for accessing Microsoft Media Server (MMS) media streaming protocol"
HOMEPAGE="https://launchpad.net/libmms/"
SRC_URI="http://launchpad.net/libmms/trunk/${PV}/+download/${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="hppa"
IUSE=""

RDEPEND=">=dev-libs/glib-2:2"
DEPEND="${RDEPEND}
	dev-util/pkgconfig"

src_prepare() {
	epatch "${FILESDIR}"/${P}-this_keyword.patch \
		"${FILESDIR}"/${P}-nested_comments.patch
}

src_install() {
	emake DESTDIR="${D}" install || die
	dodoc AUTHORS ChangeLog NEWS README TODO
}
