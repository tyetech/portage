# Copyright 1999-2004 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-misc/cvs-repo/gentoo-x86/app-misc/joymouse/Attic/joymouse-0.3.ebuild,v 1.2 2004/06/07 06:07:38 dragonheart Exp $

DESCRIPTION="An application that translates joystick events to mouse events"
HOMEPAGE="http://sourceforge.net/projects/joymouse-linux"
SRC_URI="mirror://sourceforge/joymouse-linux/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
IUSE=""
KEYWORDS="x86"

DEPEND=""

src_unpack() {
	unpack ${A}
	cd ${S}
	sed -i \
		-e 's:$(mandir):$(DESTDIR)$(mandir):g' \
		-e '/^mandir = /s:/man:/share/man:' \
		doc/Makefile.in
}

src_install() {
	make install DESTDIR=${D} || die
	dodoc AUTHORS README
}
