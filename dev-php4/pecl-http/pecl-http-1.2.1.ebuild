# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-php4/cvs-repo/gentoo-x86/dev-php4/pecl-http/Attic/pecl-http-1.2.1.ebuild,v 1.1 2006/08/26 09:02:00 sebastian Exp $

PHP_EXT_ZENDEXT="no"
PHP_EXT_PECL_PKG="pecl_http"
PHP_EXT_NAME="http"
PHP_EXT_INI="yes"

inherit php-ext-pecl-r1

IUSE=""
DESCRIPTION="Extended HTTP Support for PHP."
SLOT="0"
LICENSE="BSD"
KEYWORDS="~x86"

DEPEND="${DEPEND} net-misc/curl"

need_php_by_category
