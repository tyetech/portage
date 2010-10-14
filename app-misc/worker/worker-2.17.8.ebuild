# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-misc/cvs-repo/gentoo-x86/app-misc/worker/Attic/worker-2.17.8.ebuild,v 1.6 2010/10/14 18:36:15 ranger Exp $

inherit eutils

DESCRIPTION="Worker Filemanager: Amiga Directory Opus 4 clone"
HOMEPAGE="http://www.boomerangsworld.de/worker/"
SRC_URI="http://www.boomerangsworld.de/worker/downloads/${P}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="alpha amd64 ~hppa ia64 ppc sparc x86"
IUSE="avfs"

RDEPEND="x11-libs/libSM
	dev-libs/dbus-glib
	avfs? ( sys-fs/avfs )"
DEPEND="${RDEPEND}"

src_compile() {
	econf \
		$(use_with avfs) || die "./configure failed"
	emake || die "make failed"
}

src_install() {
	einstall || die "make install failed"
	doman man/worker.1
	dodoc AUTHORS ChangeLog INSTALL NEWS README README_LARGEFILES THANKS
	make_desktop_entry ${PN} Worker WorkerIcon "System;Utility"
}
