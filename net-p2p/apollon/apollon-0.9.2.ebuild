# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-p2p/cvs-repo/gentoo-x86/net-p2p/apollon/Attic/apollon-0.9.2.ebuild,v 1.4 2004/06/29 12:20:08 carlo Exp $

inherit kde

DESCRIPTION="A KDE-based giFT GUI"
HOMEPAGE="http://apollon.sourceforge.net"
SRC_URI="mirror://sourceforge/apollon/${P}.tar.bz2"

SLOT="0"
LICENSE="GPL-2"
KEYWORDS="x86 amd64"
IUSE=""

DEPEND=">=net-p2p/gift-0.11.4"
need-kde 3