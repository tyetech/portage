# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-pda/cvs-repo/gentoo-x86/app-pda/multisync-gui/Attic/multisync-gui-0.90.19.ebuild,v 1.3 2007/02/12 20:49:51 peper Exp $

DESCRIPTION="OpenSync multisync-gui"
HOMEPAGE="http://www.opensync.org/"
SRC_URI="http://dev.gentooexperimental.org/~peper/distfiles/${P}.tar.gz"

KEYWORDS="~amd64 ~x86"
SLOT="0"
LICENSE="GPL-2"
IUSE="evo"

DEPEND="app-pda/libopensync
	evo? ( app-pda/libopensync-plugin-evolution2 )
	>=gnome-base/libgnomeui-2.0"
RDEPEND="${DEPEND}"

src_install() {
	emake install DESTDIR="${D}" || die "emake install failed"
	dodoc README AUTHORS
}
