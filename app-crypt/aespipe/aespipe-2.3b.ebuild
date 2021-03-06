# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-crypt/cvs-repo/gentoo-x86/app-crypt/aespipe/aespipe-2.3b.ebuild,v 1.14 2010/01/23 18:39:03 armin76 Exp $

inherit flag-o-matic

DESCRIPTION="Encrypts data from stdin to stdout"
HOMEPAGE="http://loop-aes.sourceforge.net"
SRC_URI="http://loop-aes.sourceforge.net/aespipe/${PN}-v${PV}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 ~arm ppc ppc64 sparc x86"
IUSE="static"
DEPEND=""
RDEPEND="app-arch/sharutils"

S="${WORKDIR}/${PN}-v${PV}"

src_compile() {
	use static && append-ldflags -static
	econf || die
	emake || die
}

src_install() {
	dobin aespipe bz2aespipe
	dodoc README
	doman aespipe.1
}
