# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-irc/cvs-repo/gentoo-x86/net-irc/loqui/loqui-0.5.3.ebuild,v 1.5 2012/09/11 15:02:50 armin76 Exp $

EAPI=4

DESCRIPTION="a graphical IRC client for GNOME2 on UNIX like operating system."
HOMEPAGE="https://launchpad.net/loqui/"
SRC_URI="https://launchpad.net/loqui/${PV%.*}/${PV}/+download/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 ppc x86"
IUSE=""

RDEPEND=">=dev-libs/glib-2.22:2
	>=x11-libs/gtk+-2.4:2
	>=net-libs/gnet-2.0.3"
DEPEND="${RDEPEND}
	virtual/pkgconfig
	sys-devel/gettext"
