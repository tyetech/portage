# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-php/cvs-repo/gentoo-x86/dev-php/igbinary/igbinary-1.1.1-r1.ebuild,v 1.1 2011/11/11 19:59:16 olemarkus Exp $

EAPI="2"
PHP_EXT_NAME="igbinary"
PHP_EXT_INI="yes"
PHP_EXT_ZENDEXT="no"
DOCS="README"

USE_PHP="php5-3 php5-4"

inherit php-ext-source-r2

KEYWORDS="~amd64 ~x86"

DESCRIPTION="A fast drop in replacement for the standard PHP serialize"
HOMEPAGE="http://opensource.dynamoid.com/"
SRC_URI="http://opensource.dynamoid.com/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

src_configure() {
	my_conf="--enable-igbinary"
	php-ext-source-r2_src_configure
}

src_test() {
	   for slot in $(php_get_slots); do
	      php_init_slot_env ${slot}
	      NO_INTERACTION="yes" emake test || die "emake test failed for slot ${slot}"
	   done
}
