# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sys-fs/cvs-repo/gentoo-x86/sys-fs/reiserfsprogs/reiserfsprogs-3.6.21-r1.ebuild,v 1.13 2012/05/26 18:24:58 armin76 Exp $

EAPI="4"

inherit eutils

DESCRIPTION="Reiserfs Utilities"
HOMEPAGE="http://www.kernel.org/pub/linux/utils/fs/reiserfs/"
SRC_URI="mirror://kernel/linux/utils/fs/reiserfs/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="alpha amd64 arm hppa ia64 ~mips ppc ppc64 -sparc x86 ~amd64-linux ~x86-linux"
IUSE=""

src_prepare() {
	epatch "${FILESDIR}"/${P}-fsck-n.patch
	epatch "${FILESDIR}"/${P}-fix_large_fs.patch
}

src_configure() {
	econf --prefix="${EPREFIX}/"
}

src_install() {
	default
	dosym reiserfsck /sbin/fsck.reiserfs
	dosym mkreiserfs /sbin/mkfs.reiserfs
}
