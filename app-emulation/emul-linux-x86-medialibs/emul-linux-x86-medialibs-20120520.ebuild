# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-emulation/cvs-repo/gentoo-x86/app-emulation/emul-linux-x86-medialibs/emul-linux-x86-medialibs-20120520.ebuild,v 1.2 2012/07/25 14:30:06 pacho Exp $

EAPI="4"

inherit emul-linux-x86

LICENSE="APL-1.0 GPL-2 BSD BSD-2 public-domain LGPL-2 MPL-1.1 LGPL-2.1 MPEG-4"
KEYWORDS="-* amd64"

DEPEND=""
RDEPEND="~app-emulation/emul-linux-x86-baselibs-${PV}
	~app-emulation/emul-linux-x86-xlibs-${PV}
	~app-emulation/emul-linux-x86-db-${PV}
	!<=app-emulation/emul-linux-x86-sdl-20081109
	!<=app-emulation/emul-linux-x86-soundlibs-20110101"
PDEPEND="~app-emulation/emul-linux-x86-soundlibs-${PV}"

src_prepare() {
	# Include all libv4l libs, bug #348277
	ALLOWED="${S}/usr/lib32/libv4l/"
	emul-linux-x86_src_prepare
}
