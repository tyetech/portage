# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-emulation/cvs-repo/gentoo-x86/app-emulation/emul-linux-x86-sdl/Attic/emul-linux-x86-sdl-1.0.ebuild,v 1.2 2004/08/12 01:36:33 lv Exp $

DESCRIPTION="32bit SDL emulation for amd64"
SRC_URI="http://dev.gentoo.org/~lv/emul-linux-x86-sdl-1.0.tar.bz2"
HOMEPAGE=""

SLOT="0"
LICENSE="GPL-2"
KEYWORDS="-* amd64"
IUSE=""

DEPEND="virtual/libc
	>=app-emulation/emul-linux-x86-xlibs-1.0"

src_install() {
	mkdir -p ${D}
	# everything should already be in the right place :)
	cp -Rpvf ${WORKDIR}/* ${D}
}
