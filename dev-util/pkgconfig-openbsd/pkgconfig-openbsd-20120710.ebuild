# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-util/cvs-repo/gentoo-x86/dev-util/pkgconfig-openbsd/pkgconfig-openbsd-20120710.ebuild,v 1.2 2012/07/13 09:32:54 ssuominen Exp $

EAPI=4

# cvs -d anoncvs@anoncvs.openbsd.org:/cvs get src/usr.bin/pkg-config

PKG_M4_VERSION=0.27

DESCRIPTION="A perl based version of pkg-config from OpenBSD"
HOMEPAGE="http://www.openbsd.org/cgi-bin/cvsweb/src/usr.bin/pkg-config/"
SRC_URI="http://dev.gentoo.org/~ssuominen/${P}.tar.xz
	pkg-config? ( http://pkgconfig.freedesktop.org/releases/pkg-config-${PKG_M4_VERSION}.tar.gz )"

LICENSE="ISC"
SLOT="0"
KEYWORDS=""
IUSE="pkg-config"

DEPEND="
	pkg-config? (
		!dev-util/pkgconfig
		!dev-util/pkg-config-lite
		!dev-util/pkgconf[pkg-config]
	)"
RDEPEND="${DEPEND}
	dev-lang/perl
	virtual/perl-Getopt-Long"

S=${WORKDIR}/${P}/src

src_prepare() {
	# Config.pm from dev-lang/perl doesn't set ARCH, only archname
	sed -i -e '/Config/s:ARCH:archname:' usr.bin/pkg-config/pkg-config || die
}

src_install() {
	if use pkg-config; then
		dobin usr.bin/pkg-config/pkg-config
		doman usr.bin/pkg-config/pkg-config.1

		insinto /usr/share/aclocal
		doins "${WORKDIR}"/pkg-config-*/pkg.m4
	else
		newbin usr.bin/pkg-config/pkg-config pkg-config-openbsd
		newman usr.bin/pkg-config/pkg-config.1 pkg-config-openbsd.1
	fi

	insinto /usr/share/${PN}
	doins -r usr.bin/pkg-config/OpenBSD

	cat <<-EOF > "${T}"/99${PN}
	COLON_SEPARATED=PERL5LIB
	PERL5LIB=/usr/share/${PN}
	EOF

	doenvd "${T}"/99${PN}
}
