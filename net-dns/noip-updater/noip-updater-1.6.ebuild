# Copyright 1999-2003 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-dns/cvs-repo/gentoo-x86/net-dns/noip-updater/Attic/noip-updater-1.6.ebuild,v 1.3 2003/06/15 13:13:10 jhhudso Exp $

IUSE=""

MY_P=${PN/-/_}_v${PV}
S=${WORKDIR}/${MY_P}
DESCRIPTION="no-ip.com dynamic DNS updater"
HOMEPAGE="http://www.no-ip.com"
SRC_URI="http://www.no-ip.com/client/linux/${MY_P}.tar.gz"

SLOT="0"
LICENSE="GPL-2"
KEYWORDS="x86"

DEPEND="virtual/glibc"

src_unpack() {
	unpack ${A}
	cd ${S}
	ebegin "Patching noip.c..."
		patch noip.c < ${FILESDIR}/noip.c.patch || die
	eend
}

pkg_config() {
	cd /tmp
	einfo "Answer the following questions."
	(no-ip.sh && mv no-ip.conf /etc/no-ip.conf) || die
	ln -s /etc/no-ip.conf /usr/lib/no-ip.conf >& /dev/null
}

src_compile() {
	emake || die
}

src_install() {
	into /usr
	dosbin noip
	dosbin no-ip.sh
	docinto ${P}
	dodoc README.FIRST
	exeinto /etc/init.d
	newexe ${FILESDIR}/noip.start noip
	prepalldocs
}

pkg_postinst() {

	einfo "Configuration can be done manually via:"
	einfo "/usr/sbin/no-ip.sh; or "
	einfo "first time you use the /etc/init.d/noip script; or"
	einfo "by using this ebuild's config option."
}
