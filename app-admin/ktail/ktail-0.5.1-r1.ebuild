# Copyright 1999-2000 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License, v2 or later
# Author Dan Armak <danarmak@gentoo.org>
# $Header: /usr/local/ssd/gentoo-x86/output/app-admin/cvs-repo/gentoo-x86/app-admin/ktail/Attic/ktail-0.5.1-r1.ebuild,v 1.2 2001/11/16 12:50:41 danarmak Exp $
. /usr/portage/eclass/inherit.eclass || die
inherit kde-base || die

need-kdelibs 2

DESCRIPTION="ktail monitors multiple files and/or command output in one window."

SRC_URI="http://www.franken.de/users/duffy1/rjakob/${P}.tar.gz"

src_unpack() {
	base_src_unpack
	cd ${WORKDIR}
	patch -p0 < ${FILESDIR}/${P}-gentoo.diff
}




