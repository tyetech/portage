# Copyright 2002 Arcady Genkin <agenkin@gentoo.org>.
# Distributed under the terms of the GNU General Public License v2.
# $Header: /usr/local/ssd/gentoo-x86/output/app-crypt/cvs-repo/gentoo-x86/app-crypt/keylookup/keylookup-2.2.ebuild,v 1.3 2003/03/28 12:24:35 pvdabeel Exp $

DESCRIPTION="A tool to fetch PGP keys from keyservers."
HOMEPAGE="http://www.palfrader.org/keylookup/"
LICENSE="GPL-2"

RDEPEND="dev-lang/perl
	app-crypt/gnupg"

SLOT="0"
KEYWORDS="x86 ppc"
IUSE=""

SRC_URI="http://www.palfrader.org/keylookup/files/${P}.tar.gz"
S=${WORKDIR}/${P}

src_compile() {
	true
}

src_install() {
	dobin keylookup
	doman keylookup.1
	dodoc COPYING  ChangeLog  NEWS	TODO
}
