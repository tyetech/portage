# Copyright 1999-2002 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License, v2 or later
# $Header: /usr/local/ssd/gentoo-x86/output/x11-wm/cvs-repo/gentoo-x86/x11-wm/papuawm/Attic/papuawm-0.3.1.ebuild,v 1.1 2003/04/21 23:36:36 mholzer Exp $

DESCRIPTION="PapuaWM, a minimalistic, though useable window manager"
MY_P="${P/papuawm/PapuaWM}"
S=$WORKDIR/$MY_P
SRC_URI="http://papuaos.org/files/${MY_P}.tar.gz"

HOMEPAGE="http://papuaos.org/papuawm"
SLOT="0"
LICENSE="GPL-2"
KEYWORDS="~x86"

DEPEND="virtual/x11"

src_install () {
	einstall
	dodoc README STATUS TODO papuawm.conf ChangeLog
}
