# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-misc/cvs-repo/gentoo-x86/net-misc/kvpnc/Attic/kvpnc-0.8.6.1.ebuild,v 1.1 2006/10/01 14:08:08 voxus Exp $

inherit kde

DESCRIPTION="kvpnc - a KDE-VPN connection utility."
SRC_URI="http://download.gna.org/${PN}/${P}.tar.bz2"
HOMEPAGE="http://home.gna.org/${PN}/"
LICENSE="GPL-2"
KEYWORDS="~amd64 ~ppc ~ppc64 ~sparc ~x86"
IUSE=""
SLOT="0"

DEPEND="dev-libs/crypto++"
RDEPEND=">=net-misc/vpnc-0.2"
need-kde 3.2
