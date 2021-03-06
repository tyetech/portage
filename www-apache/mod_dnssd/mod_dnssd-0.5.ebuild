# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/www-apache/cvs-repo/gentoo-x86/www-apache/mod_dnssd/mod_dnssd-0.5.ebuild,v 1.4 2009/03/09 18:02:04 betelgeuse Exp $

EAPI="2"

inherit apache-module eutils

KEYWORDS="amd64 x86"

DESCRIPTION="mod_dnssd is an Apache module which adds Zeroconf support via DNS-SD using Avahi"
HOMEPAGE="http://0pointer.de/lennart/projects/mod_dnssd/"
SRC_URI="http://0pointer.de/lennart/projects/${PN}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
IUSE="doc"

DEPEND="net-dns/avahi[dbus]"
RDEPEND="${DEPEND}"

APACHE2_MOD_CONF="80_${PN}"
APACHE2_MOD_DEFINE="DNSSD"

need_apache2

src_configure() {
	econf --with-apxs=${APXS} --disable-lynx || die "econf failed"
}
