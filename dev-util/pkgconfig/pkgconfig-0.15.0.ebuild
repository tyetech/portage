# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-util/cvs-repo/gentoo-x86/dev-util/pkgconfig/Attic/pkgconfig-0.15.0.ebuild,v 1.19 2004/07/13 03:57:47 pvdabeel Exp $

DESCRIPTION="Package Config system that manages compile/link flags for libraries"
HOMEPAGE="http://www.freedesktop.org/software/pkgconfig/"
SRC_URI="http://www.freedesktop.org/software/pkgconfig/releases/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="x86 ppc sparc mips alpha arm hppa amd64 ia64 ppc64 s390 macos"
IUSE=""

DEPEND="virtual/libc"

src_install() {
	einstall || die
	dodoc AUTHORS ChangeLog NEWS README
}
