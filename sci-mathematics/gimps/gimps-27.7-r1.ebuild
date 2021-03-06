# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sci-mathematics/cvs-repo/gentoo-x86/sci-mathematics/gimps/gimps-27.7-r1.ebuild,v 1.3 2012/07/06 07:28:54 jdhore Exp $

EAPI=4

DESCRIPTION="The Great Internet Mersenne Prime Search"
HOMEPAGE="http://mersenne.org/"
SRC_URI="
	amd64? ( ftp://mersenne.org/gimps/p95v${PV/./}.linux64.tar.gz )
	x86? ( ftp://mersenne.org/gimps/p95v${PV/./}.linux32.tar.gz )"
# Permanently changed from the old version?
# SRC_URI="
# 	amd64? ( ftp://mersenne.org/gimps/mprime${PV/./}-linux64.tar.gz )
# 	x86? ( ftp://mersenne.org/gimps/mprime${PV/./}.tar.gz )"

SLOT="0"
LICENSE="as-is"
KEYWORDS="-* amd64 x86"
IUSE=""

# Since there are no statically linked binaries for this version of mprime,
# and no static binaries for amd64 in general, we use the dynamically linked
# ones and try to cover the .so deps with the packages listed in RDEPEND.
DEPEND=""
RDEPEND="net-misc/curl"

RESTRICT="binchecks"

S="${WORKDIR}"
I="/opt/gimps"

QA_PREBUILT="opt/gimps/mprime"

src_install() {
	dodir ${I} /var/lib/gimps
	cp mprime "${D}/${I}"
	fperms a-w "${I}/mprime"
	fowners root:0 "${I}"
	fowners root:0 "${I}/mprime"

	dodoc license.txt readme.txt stress.txt whatsnew.txt undoc.txt

	newinitd "${FILESDIR}/${PN}-26.6-r1-init.d" gimps
	newconfd "${FILESDIR}/${PN}-25.6-conf.d" gimps
}

pkg_postinst() {
	echo
	einfo "You can use \`/etc/init.d/gimps start\` to start a GIMPS client in the"
	einfo "background at boot. Have a look at /etc/conf.d/gimps and check some"
	einfo "configuration options."
	einfo
	einfo "If you don't want to use the init script to start gimps, remember to"
	einfo "pass it an additional command line parameter specifying where the data"
	einfo "files are to be stored, e.g.:"
	einfo "   ${I}/mprime -w/var/lib/gimps"
	echo
}

pkg_postrm() {
	echo
	einfo "GIMPS data files were not removed."
	einfo "Remove them manually from /var/lib/gimps/"
	echo
}
