# Copyright 1999-2004 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-misc/cvs-repo/gentoo-x86/x11-misc/wayv/Attic/wayv-0.2.ebuild,v 1.4 2004/04/11 17:25:25 pyrania Exp $

PKG=${P/-0.2/.0.2}
MY_P=${P/-0.2}

DESCRIPTION="Wayv is hand-writing/gesturing recognition software for X"
HOMEPAGE="http://www.stressbunny.com/wayv"
SRC_URI="http://cvs.gentoo.org/~zhen/${PKG}.tar.gz"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="x86"
IUSE=""

DEPEND="virtual/x11 virtual/glibc"
RDEPEND=""

S=${WORKDIR}/${MY_P}

src_compile() {

	econf || die
	emake || die
}

src_install() {

	einstall || die
}
