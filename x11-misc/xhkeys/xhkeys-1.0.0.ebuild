# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-misc/cvs-repo/gentoo-x86/x11-misc/xhkeys/Attic/xhkeys-1.0.0.ebuild,v 1.3 2004/06/24 22:41:22 agriffis Exp $

DESCRIPTION="assign particular actions to any key or key combination"
HOMEPAGE="http://www.geocities.com/wmalms/"
SRC_URI="http://www.geocities.com/wmalms/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="x86"
IUSE=""

DEPEND="virtual/x11"

src_install() {
	dobin xhkeys xhkconf
	dodoc README VERSION
}
