# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-misc/cvs-repo/gentoo-x86/net-misc/openntpd/openntpd-3.9_p1-r4.ebuild,v 1.2 2011/08/25 14:38:20 nelchael Exp $

EAPI="2"

inherit eutils autotools

MY_P=${P/_/}
DEB_VER="8"
DESCRIPTION="Lightweight NTP server ported from OpenBSD"
HOMEPAGE="http://www.openntpd.org/"
SRC_URI="mirror://openbsd/OpenNTPD/${MY_P}.tar.gz
	mirror://debian/pool/main/o/openntpd/${MY_P/-/_}+debian-${DEB_VER}.debian.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~mips ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86 ~x86-fbsd"
IUSE="ssl selinux"

RDEPEND="ssl? ( dev-libs/openssl )
	selinux? ( sec-policy/selinux-ntp )
	!<=net-misc/ntp-4.2.0-r2
	!net-misc/ntp[-openntpd]"
DEPEND="${RDEPEND}
	virtual/yacc"

S=${WORKDIR}/${MY_P}

pkg_setup() {
	enewgroup ntp 123
	enewuser ntp 123 -1 /var/lib/openntpd/chroot ntp

	# make sure user has correct HOME when flipping between
	# the standard ntp pkg and this one
	usermod -d /var/lib/openntpd/chroot ntp
}

src_prepare() {
	sed -i '/NTPD_USER/s:_ntp:ntp:' ntpd.h || die

	epatch "${WORKDIR}"/debian/patches/*.patch
	sed -i 's:debian:gentoo:g' ntpd.conf || die
	eautoreconf # deb patchset touches .ac files and such
}

src_configure() {
	econf \
		--disable-strip \
		--with-adjtimex \
		$(use_with !ssl builtin-arc4random)
}

src_install() {
	emake install DESTDIR="${D}" || die
	dodoc ChangeLog CREDITS README

	newinitd "${FILESDIR}/openntpd.init.d-${PVR}" ntpd
	newconfd "${FILESDIR}/openntpd.conf.d-${PVR}" ntpd
}
