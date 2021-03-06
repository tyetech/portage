# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sys-boot/cvs-repo/gentoo-x86/sys-boot/efibootmgr/efibootmgr-0.5.4.ebuild,v 1.6 2012/05/03 04:50:13 jdhore Exp $

inherit flag-o-matic toolchain-funcs

DESCRIPTION="Interact with the EFI Boot Manager on IA-64 Systems"
HOMEPAGE="http://developer.intel.com/technology/efi"
SRC_URI="http://linux.dell.com/efibootmgr/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ia64 ~x86"
IUSE=""

RDEPEND="sys-apps/pciutils"
DEPEND="${RDEPEND}
	virtual/pkgconfig"

src_unpack() {
	unpack ${A}
	cd "${S}"
	sed -i \
		-e "/^LIBS/s:=.*:=$($(tc-getPKG_CONFIG) libpci --libs):" \
		src/efibootmgr/module.mk || die
}

src_compile() {
	strip-flags
	tc-export CC
	emake EXTRA_CFLAGS="${CFLAGS}" || die
}

src_install() {
	# build system uses perl, so just do it ourselves
	dosbin src/efibootmgr/efibootmgr || die
	doman src/man/man8/efibootmgr.8
	dodoc AUTHORS README doc/ChangeLog doc/TODO
}
