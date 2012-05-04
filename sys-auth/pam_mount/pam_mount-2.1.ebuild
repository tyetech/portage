# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sys-auth/cvs-repo/gentoo-x86/sys-auth/pam_mount/Attic/pam_mount-2.1.ebuild,v 1.6 2012/05/04 18:57:21 jdhore Exp $

EAPI=3

inherit multilib

DESCRIPTION="A PAM module that can mount volumes for a user session"
HOMEPAGE="http://pam-mount.sourceforge.net"
SRC_URI="mirror://sourceforge/pam-mount/${P}.tar.xz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64 ppc x86"

IUSE="crypt"
DEPEND=">=sys-libs/pam-0.99
	dev-libs/openssl
	>=sys-libs/libhx-3.4
	dev-libs/libxml2
	>=sys-fs/cryptsetup-1.1.0
	virtual/pkgconfig
	app-arch/xz-utils"
RDEPEND=">=sys-libs/pam-0.99
	dev-libs/openssl
	>=sys-libs/libhx-3.4
	dev-libs/libxml2
	>=sys-fs/cryptsetup-1.1.0
	sys-process/lsof"

src_configure() {
	econf --with-slibdir="/$(get_libdir)" || die "econf failed"
}

src_install() {
	emake DESTDIR="${D}" install || die "make install failed"
	dodoc doc/*.txt || die "dodoc failed"
}
