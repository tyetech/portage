# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sys-process/cvs-repo/gentoo-x86/sys-process/incron/incron-0.5.9-r1.ebuild,v 1.6 2012/01/09 19:05:54 ranger Exp $

EAPI="3"

inherit eutils linux-info toolchain-funcs

DESCRIPTION="inotify based cron daemon"
HOMEPAGE="http://incron.aiken.cz/"
SRC_URI="http://inotify.aiken.cz/download/incron/${P}.tar.gz"

LICENSE="GPL-2 LGPL-2.1"
SLOT="0"
KEYWORDS="amd64 ppc x86"
IUSE=""

DEPEND=""
RDEPEND=""

# < 2.6.18 => INOTIFY, >= 2.6.18 => INOTIFY_USER
# It should be ok to expect at least 2.6.18
CONFIG_CHECK="~INOTIFY_USER"

src_prepare() {
	# http://bts.aiken.cz/view.php?id=385
	# http://bts.aiken.cz/view.php?id=447
	epatch "${FILESDIR}"/${P}-gcc44.patch

	# http://bts.aiken.cz/view.php?id=512
	epatch "${FILESDIR}"/${P}-Makefile.patch
}

src_compile() {
	emake CXX=$(tc-getCXX) || die "emake failed"
}

src_install() {
	emake DESTDIR="${D}" PREFIX=/usr DOCDIR=/usr/share/doc/${PF} install || die "emake install failed"

	newinitd "${FILESDIR}/incrond.init" incrond || die

	dodoc CHANGELOG README TODO
}
