# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/xfce-extra/cvs-repo/gentoo-x86/xfce-extra/xfce4-genmon-plugin/xfce4-genmon-plugin-3.4.0.ebuild,v 1.6 2012/07/14 13:25:26 maekke Exp $

EAPI=4
inherit xfconf

DESCRIPTION="Cyclically spawns the executable, captures its output and displays the result into the panel"
HOMEPAGE="http://goodies.xfce.org/projects/panel-plugins/xfce4-genmon-plugin"
SRC_URI="mirror://xfce/src/panel-plugins/${PN}/${PV%.*}/${P}.tar.bz2"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~alpha amd64 arm hppa ~ia64 ppc ppc64 ~sparc x86 ~x86-fbsd ~x86-freebsd ~amd64-linux ~ia64-linux ~x86-linux"
IUSE="debug"

RDEPEND=">=xfce-base/libxfce4ui-4.8
	>=xfce-base/xfce4-panel-4.8"
DEPEND="${RDEPEND}
	dev-util/intltool
	sys-devel/gettext
	virtual/pkgconfig"

S=${WORKDIR}/${PN}-${PV%.*}

pkg_setup() {
	XFCONF=(
		$(xfconf_use_debug)
		)

	DOCS=( AUTHORS ChangeLog NEWS README )
}
