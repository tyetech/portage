# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-misc/cvs-repo/gentoo-x86/net-misc/serlook/Attic/serlook-0.3.1.ebuild,v 1.1 2005/01/24 19:44:25 carlo Exp $

inherit kde eutils

DESCRIPTION="serlook is a tool aimed to inspect and debug serial line data traffic"
HOMEPAGE="http://serlook.sunsite.dk/"
SRC_URI="http://serlook.sunsite.dk/${P}.tar.gz"

SLOT="0"
LICENSE="GPL-2"
KEYWORDS="~x86 ~ppc"
IUSE=""

need-kde 3