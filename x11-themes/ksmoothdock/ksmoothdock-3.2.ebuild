# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-themes/cvs-repo/gentoo-x86/x11-themes/ksmoothdock/Attic/ksmoothdock-3.2.ebuild,v 1.4 2004/06/24 23:34:17 agriffis Exp $

inherit kde-base || die
need-kde 3.2

DESCRIPTION="KSmoothDock is a dock program for KDE with smooth parabolic zooming."
SRC_URI="mirror://sourceforge/${PN}/${P}.tar.gz"
HOMEPAGE="http://ksmoothdock.sourceforge.net"

LICENSE="GPL-2"
KEYWORDS="~x86 ~ppc ~sparc"

IUSE=""
SLOT="0"

