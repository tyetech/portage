# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-cdr/cvs-repo/gentoo-x86/app-cdr/cdemu/Attic/cdemu-0.6_beta.ebuild,v 1.9 2004/11/09 23:59:31 vapier Exp $

inherit gcc flag-o-matic python

DESCRIPTION="mount bin/cue cd images"
HOMEPAGE="http://cdemu.org/"
SRC_URI="mirror://sourceforge/cdemu/${P}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="x86 ppc"
IUSE=""

DEPEND="virtual/linux-sources"
RDEPEND="dev-lang/python"

src_compile() {
	if [ "${KV:0:3}" == "2.6" ] && [[ `KV_to_int ${KV}` -lt `KV_to_int 2.6.6` ]] ; then
		emake KERN_DIR=/usr/src/linux BUILD_GHETTO=yes || die
	else
		env -u ARCH emake KERN_DIR=/usr/src/linux || die
	fi
}

src_install() {
	make install DESTDIR=${D} || die
	dodoc AUTHORS ChangeLog README TODO
}

pkg_postinst() {
	[ "${ROOT}" == "/" ] && depmod -a
}
