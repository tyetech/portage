# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-nntp/cvs-repo/gentoo-x86/net-nntp/glitter/Attic/glitter-1.0-r1.ebuild,v 1.1 2005/01/17 19:45:07 swegener Exp $

inherit eutils

DESCRIPTION="Glitter - a binary downloader for newsgroups"
HOMEPAGE="http://www.mews.org.uk/glitter/"
SRC_URI="http://www.mews.org.uk/glitter/${P}.tar.gz
	http://gentoo.mirror.at.stealer.net/files/${P}.tar.gz"

SLOT="0"
LICENSE="GPL-2"
KEYWORDS="x86 ppc"
IUSE=""
DEPEND="dev-lang/perl
	gnome-base/gnome-libs"

src_unpack() {
	unpack ${A}
	cd ${S}

	epatch ${FILESDIR}/${P}-gary-perl58.patch
}

src_install () {
	make DESTDIR=${D} install || die "make install failed"
}
