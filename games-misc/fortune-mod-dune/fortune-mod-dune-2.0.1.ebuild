# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/games-misc/cvs-repo/gentoo-x86/games-misc/fortune-mod-dune/fortune-mod-dune-2.0.1.ebuild,v 1.13 2010/12/12 17:38:00 grobian Exp $

MY_P=${PN}-quotes.${PV}
DESCRIPTION="Quotes from Frank Herbert's Dune Chronicles"
HOMEPAGE="http://dune.s31.pl/"
SRC_URI="http://dune.s31.pl/${MY_P}.tar.gz"

LICENSE="free-noncomm"
SLOT="0"
KEYWORDS="alpha amd64 arm hppa ia64 m68k ~mips ppc ppc64 s390 sh sparc x86 ~x86-fbsd ~x86-freebsd ~x86-interix ~amd64-linux ~x86-linux ~ppc-macos ~x86-macos ~x86-solaris"
IUSE=""

RDEPEND="games-misc/fortune-mod"

S=${WORKDIR}/${MY_P}

src_install() {
	insinto /usr/share/fortune
	doins * || die
}
