# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-shells/cvs-repo/gentoo-x86/app-shells/localshell/localshell-1.3.1.ebuild,v 1.5 2010/03/15 18:47:07 nixnut Exp $

inherit base eutils

DESCRIPTION="Localshell allows per-user/group local control of shell execution."
HOMEPAGE="http://oss.orbis-terrarum.net/localshell/"
SRC_URI="${HOMEPAGE}/${P}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 ppc x86"
IUSE=""

src_unpack() {
	unpack ${A}
	cd "${S}"
	epatch "${FILESDIR}"/${P}-glibc-2.10.patch
}

src_compile() {
	# this is a shell, it needs to be in /bin
	econf --bindir=/bin --sysconfdir=/etc || die "econf failed"
	emake || die "emake failed"
}

src_install() {
	emake install DESTDIR="${D}" || die "emake install failed"
	rm -f "${D}"/usr/share/doc/${PF}/{COPYING,INSTALL}
}

pkg_postinst() {
	elog "Remember to add /bin/localshell to /etc/shells and create"
	elog "/etc/localshell.conf based on the included configuration examples"
}
