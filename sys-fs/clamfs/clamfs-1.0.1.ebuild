# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sys-fs/cvs-repo/gentoo-x86/sys-fs/clamfs/clamfs-1.0.1.ebuild,v 1.1 2010/01/08 16:29:26 matsuu Exp $

EAPI="2"
inherit eutils linux-info

DESCRIPTION="A FUSE-based user-space file system with on-access anti-virus file scanning"
HOMEPAGE="http://clamfs.sourceforge.net/"
SRC_URI="mirror://sourceforge/${PN}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=">=dev-libs/boost-1.33
	sys-fs/fuse
	dev-cpp/commoncpp2
	dev-libs/rlog
	dev-libs/poco"
RDEPEND="${DEPEND}
	app-antivirus/clamav"

CONFIG_CHECK="~FUSE_FS"

src_prepare() {
	epatch "${FILESDIR}/${P}-gentoo.patch"
}

src_install() {
	emake install DESTDIR="${D}" || die "emake install failed"

	insinto /etc/clamfs
	doins doc/clamfs.xml || die

	newinitd "${FILESDIR}/${PN}.initd" ${PN} || die
	newconfd "${FILESDIR}/${PN}.confd" ${PN} || die

	dodoc AUTHORS ChangeLog NEWS README TODO || die
}
