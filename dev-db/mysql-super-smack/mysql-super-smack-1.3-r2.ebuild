# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-db/cvs-repo/gentoo-x86/dev-db/mysql-super-smack/mysql-super-smack-1.3-r2.ebuild,v 1.5 2012/04/13 18:01:26 ulm Exp $

EAPI=2
WANT_AUTOMAKE="1.4"

inherit eutils autotools

MY_PN="super-smack"
MY_P="${MY_PN}-${PV}"
DESCRIPTION="MySQL Super Smack is a benchmarking, stress testing, and load generation tool for MySQL & PostGreSQL."
HOMEPAGE="http://vegan.net/tony/supersmack/"
SRC_URI="http://vegan.net/tony/supersmack/${MY_P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 ~ppc x86"
IUSE="+mysql postgres"

DEPEND="mysql? ( virtual/mysql )
		postgres? ( dev-db/postgresql-server )"
RDEPEND="${DEPEND}"

S="${WORKDIR}/${MY_P}"

pkg_setup() {
	use !mysql && use !postgres && die "You need to use at least one of USE=mysql or USE=postgres for benchmarking!"
}

src_prepare() {
	epatch "${FILESDIR}"/${PN}-1.2.destdir.patch
	epatch "${FILESDIR}"/${PN}-1.3.amd64.patch
	epatch "${FILESDIR}"/${PN}-1.3.gcc4.3.patch
	epatch "${FILESDIR}"/${PN}-1.3-gen-data.patch
	eautomake || die "automake failed"
}

src_configure() {
	local myconf=""
	use mysql && myconf="${myconf} --with-mysql"
	use postgres && myconf="${myconf} --with-pgsql"
	myconf="${myconf} --with-datadir=/var/tmp/${MY_PN}"
	myconf="${myconf} --with-smacks-dir=/usr/share/${MY_PN}"
	econf ${myconf} || die "econf failed"
}

src_install() {
	emake DESTDIR="${D}" install || die "emake install failed"
	dodoc CHANGES INSTALL MANUAL README TUTORIAL
}

pkg_postinst() {
	elog "The gen-data binary is now installed as super-smack-gen-data"
}
