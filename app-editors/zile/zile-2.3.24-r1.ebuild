# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-editors/cvs-repo/gentoo-x86/app-editors/zile/zile-2.3.24-r1.ebuild,v 1.7 2012/07/13 12:13:10 ulm Exp $

EAPI=4

inherit eutils

DESCRIPTION="Zile is a small Emacs clone"
HOMEPAGE="http://www.gnu.org/software/zile/"
SRC_URI="mirror://gnu/zile/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="alpha amd64 ppc sparc x86 ~x86-fbsd ~x86-freebsd ~x86-interix ~amd64-linux ~x86-linux ~ppc-macos ~x86-macos ~x86-solaris"
IUSE="test valgrind"

RDEPEND="sys-libs/ncurses"
DEPEND="${RDEPEND}
	test? ( valgrind? ( dev-util/valgrind ) )"

src_prepare() {
	epatch "${FILESDIR}/${P}-userhome.patch"
}

src_configure() {
	econf $(use test && use_with valgrind || echo "--without-valgrind")
}

src_install() {
	emake DESTDIR="${D}" install

	# FAQ is installed by the build system in /usr/share/zile
	dodoc AUTHORS BUGS NEWS README THANKS

	# Zile should never install charset.alias (even on non-glibc arches)
	rm -f "${ED}"/usr/lib/charset.alias
}
