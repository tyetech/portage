# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-wireless/cvs-repo/gentoo-x86/net-wireless/rfkill/rfkill-0.1.ebuild,v 1.2 2012/09/28 08:06:31 chainsaw Exp $

inherit toolchain-funcs

DESCRIPTION="Tool to read and control rfkill status through /dev/rfkill"
HOMEPAGE="http://wireless.kernel.org/en/users/Documentation/rfkill"
SRC_URI="http://wireless.kernel.org/download/${PN}/${P}.tar.bz2"

LICENSE="ISC"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RDEPEND=""
DEPEND="sys-devel/make"

CC=$(tc-getCC)
LD=$(tc-getLD)

src_compile() {
	emake || die "Failed to compile"
}

src_install() {
	emake install DESTDIR="${D}" || die "Failed to install"
}
