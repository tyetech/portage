# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-misc/cvs-repo/gentoo-x86/kde-misc/ksmoothdock/Attic/ksmoothdock-4.5.ebuild,v 1.5 2007/07/30 13:20:23 gustavoz Exp $

inherit kde

MY_P="${P}_automake1.9"
S="${WORKDIR}/${PN}"

DESCRIPTION="KSmoothDock is a dock program for KDE with smooth parabolic zooming."
HOMEPAGE="http://ksmoothdock.sourceforge.net"
SRC_URI="mirror://sourceforge/${PN}/${MY_P}.tar.gz"

SLOT="0"
LICENSE="GPL-2"
KEYWORDS="amd64 ppc sparc x86"
IUSE=""

need-kde 3.4
