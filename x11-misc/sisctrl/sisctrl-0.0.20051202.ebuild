# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-misc/cvs-repo/gentoo-x86/x11-misc/sisctrl/sisctrl-0.0.20051202.ebuild,v 1.5 2012/05/15 16:10:36 ssuominen Exp $

EAPI=4
inherit eutils

DESCRIPTION="tool that allows you to tune SiS drivers from X"
HOMEPAGE="http://www.winischhofer.net/linuxsispart1.shtml#sisctrl"
SRC_URI="http://www.winischhofer.net/sis/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 x86"
IUSE=""

RDEPEND="dev-libs/glib:2
	 x11-libs/gtk+:2
	 x11-libs/libXrender
	 x11-libs/libXv
	 x11-libs/libXxf86vm"
DEPEND="${RDEPEND}
	virtual/pkgconfig
	x11-proto/xf86vidmodeproto"

DOCS="AUTHORS ChangeLog NEWS README"

src_prepare() {
	epatch "${FILESDIR}"/${P}-no-xv.patch
	sed -i -e 's,/X11R6,,g' configure || die
}
