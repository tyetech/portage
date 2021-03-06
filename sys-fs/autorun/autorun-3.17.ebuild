# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sys-fs/cvs-repo/gentoo-x86/sys-fs/autorun/autorun-3.17.ebuild,v 1.5 2010/02/18 22:20:24 ssuominen Exp $

EAPI=2
inherit eutils

DESCRIPTION="auto cdrom mounter for the lazy user"
HOMEPAGE="http://autorun.sourceforge.net/"
SRC_URI="mirror://sourceforge/autorun/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=""
DEPEND="sys-devel/gettext
	dev-util/intltool
	app-text/xmlto
	app-text/docbook-xml-dtd:4.1.2"

src_prepare() {
	epatch "${FILESDIR}"/${P}-headers.patch
}

src_configure() {
	export KDEDIR=/usr
	econf \
		--disable-dependency-tracking
}

src_install() {
	emake DESTDIR="${D}" install || die
	dodoc AUTHORS ChangeLog NEWS README
}
