# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/xfce-extra/cvs-repo/gentoo-x86/xfce-extra/xfswitch-plugin/xfswitch-plugin-0.0.1.ebuild,v 1.10 2012/05/05 07:47:43 mgorny Exp $

EAPI=4
inherit xfconf

DESCRIPTION="User switching plugin for the Xfce Panel"
HOMEPAGE="http://goodies.xfce.org/projects/panel-plugins/xfswitch-plugin"
SRC_URI="mirror://xfce/src/panel-plugins/${PN}/0.0/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

COMMON_DEPEND=">=x11-libs/gtk+-2.12:2
	>=xfce-base/libxfce4util-4.8
	>=xfce-base/libxfcegui4-4.8
	>=xfce-base/xfce4-panel-4.8"
RDEPEND="${COMMON_DEPEND}
	gnome-base/gdm"
DEPEND="${COMMON_DEPEND}
	dev-util/intltool
	virtual/pkgconfig"

pkg_setup() {
	DOCS=( AUTHORS ChangeLog NEWS README )
}
