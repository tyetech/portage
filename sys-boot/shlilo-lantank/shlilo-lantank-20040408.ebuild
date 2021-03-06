# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sys-boot/cvs-repo/gentoo-x86/sys-boot/shlilo-lantank/shlilo-lantank-20040408.ebuild,v 1.1 2009/10/18 22:16:14 vapier Exp $

inherit mount-boot

MY_P="sh-lilo-sel-${PV}"
DESCRIPTION="bootloader for the SuperH Lantank"
HOMEPAGE="http://www.linux-sh.org/"
SRC_URI="mirror://gentoo/${MY_P}.tar.gz"

LICENSE="as-is"
SLOT="0"
KEYWORDS="-* sh"
IUSE=""
RESTRICT="strip"

S=${WORKDIR}/${MY_P}

QA_TEXTRELS_sh="sbin/lilo"

src_compile() { :; }

src_install() {
	into /
	dosbin precompiled/lilo || die
	insinto /boot
	doins precompiled/boot.b || die
	dosym . /boot/boot
	insinto /etc
	doins "${FILESDIR}"/lilo.conf || die
	dodoc ChangeLog README TODO
}
