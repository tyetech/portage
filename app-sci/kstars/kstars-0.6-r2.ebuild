# Copyright 1999-2002 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License, v2 or later
# $Header: /usr/local/ssd/gentoo-x86/output/app-sci/cvs-repo/gentoo-x86/app-sci/kstars/Attic/kstars-0.6-r2.ebuild,v 1.2 2002/05/21 18:14:07 danarmak Exp $

inherit kde-base || die

need-kde 2.1

DESCRIPTION="A fun and educational desktop planetarium program for KDE2"
HOMEPAGE="http://kstars.sourceforge.net"
SRC_URI="http://prdownloads.sourceforge.net/${PN}/${P}.tar.gz"
LICENSE="GPL-2"

src_install () {
	# ugh. hopefully the authors next release will be fixed.
	patch -p0 < ${FILESDIR}/destdir-icons.diff || die "bad patchfile"
	kde_src_install
}
