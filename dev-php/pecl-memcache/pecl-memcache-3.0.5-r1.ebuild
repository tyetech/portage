# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-php/cvs-repo/gentoo-x86/dev-php/pecl-memcache/pecl-memcache-3.0.5-r1.ebuild,v 1.2 2012/08/27 08:27:13 olemarkus Exp $

EAPI="2"
PHP_EXT_NAME="memcache"
PHP_EXT_INI="yes"
PHP_EXT_ZENDEXT="no"
DOCS="README"

inherit php-ext-pecl-r2

KEYWORDS="~amd64 ~hppa ~ppc ~ppc64 ~x86"

DESCRIPTION="PHP extension for using memcached."
LICENSE="PHP-3"
SLOT="0"
IUSE="+session"

DEPEND="sys-libs/zlib
		dev-lang/php[session?]"
RDEPEND="${DEPEND}"

# upstream does not ship any testsuite, so the PHPize test-runner fails.
RESTRICT='test'

src_compile() {
	my_conf="--enable-memcache --with-zlib-dir=/usr $(use_enable session memcache-session)"
	php-ext-pecl-r2_src_compile
}

src_install() {
	php-ext-pecl-r2_src_install

	php-ext-source-r2_addtoinifiles "memcache.allow_failover" "true"
	php-ext-source-r2_addtoinifiles "memcache.max_failover_attempts" "20"
	php-ext-source-r2_addtoinifiles "memcache.chunk_size" "32768"
	php-ext-source-r2_addtoinifiles "memcache.default_port" "11211"
	php-ext-source-r2_addtoinifiles "memcache.hash_strategy" "consistent"
	php-ext-source-r2_addtoinifiles "memcache.hash_function" "crc32"
	php-ext-source-r2_addtoinifiles "memcache.redundancy" "1"
	php-ext-source-r2_addtoinifiles "memcache.session_redundancy" "2"
	php-ext-source-r2_addtoinifiles "memcache.protocol" "ascii"
}
