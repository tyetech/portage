# Copyright 2002 Arcady Genkin <agenkin@gentoo.org>
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-crypt/cvs-repo/gentoo-x86/app-crypt/keylookup/keylookup-2.2.ebuild,v 1.4 2003/08/06 06:46:59 vapier Exp $

DESCRIPTION="A tool to fetch PGP keys from keyservers"
HOMEPAGE="http://www.palfrader.org/keylookup/"
SRC_URI="http://www.palfrader.org/keylookup/files/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="x86 ppc"

RDEPEND="dev-lang/perl
	app-crypt/gnupg"

src_install() {
	dobin keylookup
	doman keylookup.1
	dodoc COPYING ChangeLog NEWS TODO
}
