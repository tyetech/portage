# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-plugins/cvs-repo/gentoo-x86/x11-plugins/gkrellm-bgchanger/gkrellm-bgchanger-0.1.11-r1.ebuild,v 1.1 2012/09/08 12:54:09 ago Exp $

EAPI=4

inherit gkrellm-plugin toolchain-funcs

IUSE=""

MY_PN=gkrellmbgchg2
MY_P=${MY_PN}-${PV}
S=${WORKDIR}/${MY_P}
DESCRIPTION="Plugin for GKrellM2 to change your desktop background"
HOMEPAGE="http://www.bender-suhl.de/stefan/english/comp/gkrellmbgchg.html"
SRC_URI="http://www.bender-suhl.de/stefan/comp/sources/${MY_P}.tar.gz"

SLOT="2"
LICENSE="GPL-2"
KEYWORDS="~alpha ~amd64 ~ppc ~sparc ~x86"

PLUGIN_SO=gkrellmbgchg.so
PLUGIN_DOCS="bgchg_info.sh kdewallpaper.sh"

src_prepare() {
	sed -i "s:local/::" Makefile || die
	tc-export CC
}
