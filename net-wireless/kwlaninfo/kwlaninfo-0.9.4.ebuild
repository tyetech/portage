# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-wireless/cvs-repo/gentoo-x86/net-wireless/kwlaninfo/Attic/kwlaninfo-0.9.4.ebuild,v 1.3 2006/03/27 11:36:09 caleb Exp $

inherit kde

RDEPEND="net-wireless/wireless-tools"

DESCRIPTION="KDE Applet to display information about wlan connections"
HOMEPAGE="http://www.ph-home.de/opensource/kde3/kwlaninfo/"
SRC_URI="http://www.ph-home.de/opensource/kde3/kwlaninfo/${P}.tgz"
RESTRICT="nomirror"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86 ~amd64"

need-kde 3.0

src_compile()
{
	myconf="${myconf} $(use_with arts)"
	kde_src_compile
}
