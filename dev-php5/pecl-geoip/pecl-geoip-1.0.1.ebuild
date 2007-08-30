# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-php5/cvs-repo/gentoo-x86/dev-php5/pecl-geoip/Attic/pecl-geoip-1.0.1.ebuild,v 1.1 2007/08/30 13:02:22 jokey Exp $

PHP_EXT_NAME="geoip"
PHP_EXT_INI="yes"
PHP_EXT_ZENDEXT="no"

inherit php-ext-pecl-r1

KEYWORDS="~amd64 ~x86"

DESCRIPTION="PHP extension to map IP address to geographic places"
LICENSE="PHP"
SLOT="0"
IUSE=""

DEPEND=">=dev-libs/geoip-1.4.0"
RDEPEND="${DEPEND}"

need_php_by_category

src_install() {
	php-ext-pecl-r1_src_install
	dodoc-php README ChangeLog
}
