# Copyright 1999-2003 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sys-apps/cvs-repo/gentoo-x86/sys-apps/lshw/Attic/lshw-01.00.ebuild,v 1.3 2003/09/08 08:03:38 msterret Exp $

MY_P="${P/-/-A.}"
DESCRIPTION="Hardware Lister"
HOMEPAGE="http://ezix.sourceforge.net/"
SRC_URI="mirror://sourceforge/ezix/${MY_P}.tar.gz"

SLOT="0"
LICENSE="GPL-2"
KEYWORDS="x86 amd64"

S="${WORKDIR}/${MY_P}"


src_unpack() {
	unpack ${MY_P}.tar.gz || die
}

src_compile() {
	emake || die
}

src_install() {
	make DESTDIR=${D} install || die
}

