# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-pda/cvs-repo/gentoo-x86/app-pda/libopensync-plugin-file/Attic/libopensync-plugin-file-0.19.ebuild,v 1.2 2006/10/23 19:24:34 peper Exp $

DESCRIPTION="OpenSync File Plugin"
HOMEPAGE="http://www.opensync.org/"
SRC_URI="http://dev.gentooexperimental.org/~peper/distfiles/${P}.tar.gz"

KEYWORDS="~amd64 ~x86"
SLOT="0"
LICENSE="LGPL-2.1"
IUSE=""

DEPEND=">=app-pda/libopensync-0.19"
RDEPEND="${DEPEND}"

src_install() {
	make DESTDIR="${D}" install || die
	dodoc AUTHORS ChangeLog COPYING NEWS README
}
