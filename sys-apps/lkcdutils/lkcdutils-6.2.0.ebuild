# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sys-apps/cvs-repo/gentoo-x86/sys-apps/lkcdutils/lkcdutils-6.2.0.ebuild,v 1.1 2009/01/02 05:24:37 vapier Exp $

inherit eutils

DESCRIPTION="Linux Kernel Crash Dumps (LKCD) Utilities"
HOMEPAGE="http://lkcd.sourceforge.net/"
SRC_URI="mirror://sourceforge/lkcd/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~s390"
IUSE=""

S=${WORKDIR}/${PN}

src_unpack() {
	unpack ${A}
	cd "${S}"
	epatch "${FILESDIR}"/${P}-build.patch
}

src_compile() {
	./configure \
		--cflags="${CFLAGS} ${CPPFLAGS}" \
		--lflags="${LDFLAGS}" \
		|| die
	emake || die "make failed"
}

src_install() {
	emake install ROOT="${D}" || die "install failed"
	rm -r "${D}"/etc/sysconfig
}
