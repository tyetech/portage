# Copyright 1999-2004 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-misc/cvs-repo/gentoo-x86/app-misc/perltrash/Attic/perltrash-0.2.ebuild,v 1.4 2004/03/14 10:59:03 mr_bones_ Exp $

DESCRIPTION="Command-line trash can emulation"
HOMEPAGE="http://www.iq-computing.de/perltrash"
SRC_URI="ftp://www.iq-computing.de/${PN}/${P}.tar.bz2"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="x86 ppc"

RDEPEND=">=dev-lang/perl-5"

src_install() {
	newbin perltrash.pl perltrash
	dodoc COPYING.txt README.txt
}
