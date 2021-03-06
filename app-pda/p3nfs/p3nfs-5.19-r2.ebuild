# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-pda/cvs-repo/gentoo-x86/app-pda/p3nfs/p3nfs-5.19-r2.ebuild,v 1.1 2009/12/12 10:09:02 mrness Exp $

EAPI="2"

inherit eutils flag-o-matic

DESCRIPTION="Symbian to Unix and Linux communication program"
HOMEPAGE="http://www.koeniglich.de/p3nfs.html"
SRC_URI="http://www.koeniglich.de/packages/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 x86"
IUSE=""

DEPEND=""
RDEPEND="|| ( net-nds/portmap net-nds/rpcbind )"

src_prepare() {
	sed -i "s:.*cd client/epoc32.*:#&:" "${S}/Makefile.in"
}

src_configure() {
	append-flags -fno-strict-aliasing # fix QA issues
	sed -i "s:\$(LDFLAGS):${LDFLAGS}:" "${S}/server/Makefile.in"

	econf || die "econf failed"
}

src_compile() {
	emake CFLAGS="${CFLAGS} -Wall -I." || die "emake failed"
}

src_install() {
	emake DESTDIR="${D}" DOCDIR="${D}/usr/share/doc/${PF}" install || die "emake install failed"

	dodoc README
}

pkg_postinst() {
	elog
	elog "You need to install one of the nfsapp-*.sis clients on your"
	elog "Symbian device to be able to mount it's filesystems."
	elog
	elog "Make sure to have portmap or rpcbind service running"
	elog "before you start the p3nfsd server."
	elog
}
