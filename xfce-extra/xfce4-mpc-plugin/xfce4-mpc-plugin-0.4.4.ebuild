# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/xfce-extra/cvs-repo/gentoo-x86/xfce-extra/xfce4-mpc-plugin/xfce4-mpc-plugin-0.4.4.ebuild,v 1.1 2012/06/30 09:46:34 ssuominen Exp $

EAPI=4
inherit xfconf

DESCRIPTION="Music Player Daemon (mpd) panel plugin"
HOMEPAGE="http://goodies.xfce.org/projects/panel-plugins/xfce4-mpc-plugin"
SRC_URI="mirror://xfce/src/panel-plugins/${PN}/${PV%.*}/${P}.tar.bz2"

LICENSE="ISC"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~ppc64 ~x86"
IUSE="debug libmpd"

RDEPEND=">=xfce-base/exo-0.6
	>=xfce-base/libxfce4ui-4.8
	>=xfce-base/xfce4-panel-4.8
	libmpd? ( media-libs/libmpd )"
DEPEND="${RDEPEND}
	dev-util/intltool
	virtual/pkgconfig"

pkg_setup() {
	XFCONF=(
		$(use_enable libmpd)
		$(xfconf_use_debug)
		)

	DOCS=( AUTHORS ChangeLog README TODO )
}
