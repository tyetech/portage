# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-laptop/cvs-repo/gentoo-x86/app-laptop/thinkfan/thinkfan-0.8.0.ebuild,v 1.3 2012/06/20 06:42:06 jdhore Exp $

EAPI=4

inherit toolchain-funcs

DESCRIPTION="simple fan control program for thinkpads"
HOMEPAGE="http://thinkfan.sourceforge.net"
SRC_URI="mirror://sourceforge/${PN}/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

DEPEND=""
RDEPEND=""

src_prepare() {
	tc-export CC
}

src_install() {
	dosbin ${PN}

	newinitd rcscripts/thinkfan.gentoo ${PN}

	doman ${PN}.1
	dodoc ChangeLog NEWS README \
		examples/${PN}.conf.{complex,sysfs,thinkpad}
}

pkg_postinst() {
	elog "Please read the documentation and copy an"
	elog "appropriate file to /etc/thinkfan.conf."
}
