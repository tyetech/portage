# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-misc/cvs-repo/gentoo-x86/net-misc/knetload/Attic/knetload-2.2.2.ebuild,v 1.4 2004/06/28 19:56:39 carlo Exp $

inherit kde

DESCRIPTION="A Network applet for KDE3"
HOMEPAGE="http://flameeyes.web.ctonet.it/kdeapps.html#knetload"
SRC_URI="http://flameeyes.web.ctonet.it/files/${P}.tar.bz2"

SLOT="0"
LICENSE="GPL-2"
KEYWORDS="~x86 ~sparc ~amd64 ~ppc"
IUSE=""

need-kde 3

myconf="--enable-libsuffix="
