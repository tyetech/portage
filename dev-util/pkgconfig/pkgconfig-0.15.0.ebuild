# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-util/cvs-repo/gentoo-x86/dev-util/pkgconfig/Attic/pkgconfig-0.15.0.ebuild,v 1.23 2005/04/07 00:49:19 dostrow Exp $

inherit gnuconfig flag-o-matic

DESCRIPTION="Package Config system that manages compile/link flags for libraries"
HOMEPAGE="http://www.freedesktop.org/software/pkgconfig/"
SRC_URI="http://www.freedesktop.org/software/pkgconfig/releases/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="x86 ppc sparc mips alpha arm hppa amd64 ia64 ppc64 s390 ppc-macos"
IUSE="hardened"

DEPEND="virtual/libc"

src_unpack() {
	unpack ${A}
	cd ${S}
	gnuconfig_update
	(use ppc64 && use hardened) && replace-flags -O[2-3] -O1
}

src_install() {
	make install DESTDIR=${D} || die
	dodoc AUTHORS ChangeLog NEWS README
}
