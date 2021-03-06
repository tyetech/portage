# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-lua/cvs-repo/gentoo-x86/dev-lua/luafilesystem/luafilesystem-1.5.0.ebuild,v 1.7 2012/08/22 08:47:24 xmw Exp $

EAPI="3"
inherit multilib toolchain-funcs

DESCRIPTION="File System Library for the Lua Programming Language"
HOMEPAGE="http://keplerproject.github.com/luafilesystem/"
SRC_URI="mirror://github/keplerproject/luafilesystem/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 ~arm ppc ppc64 x86 ~x86-fbsd"
IUSE=""

DEPEND=">=dev-lang/lua-5.1"
RDEPEND="${DEPEND}"

src_prepare() {
	sed -i \
		-e "s|/usr/local|/usr|" \
		-e "s|/lib|/$(get_libdir)|" \
		-e "s|-O2|${CFLAGS}|" \
		-e "/^LIB_OPTION/s|= |= ${LDFLAGS} |" \
		-e "s|gcc|$(tc-getCC)|" \
		config || die
}

src_install() {
	emake PREFIX="${ED}usr" install || die
	dodoc README || die
	dohtml doc/us/* || die
}
