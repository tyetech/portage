# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-php5/cvs-repo/gentoo-x86/dev-php5/pecl-radius/Attic/pecl-radius-1.2.4.ebuild,v 1.4 2007/03/18 00:48:12 chtekk Exp $

PHP_EXT_NAME="radius"
PHP_EXT_INI="yes"
PHP_EXT_ZENDEXT="no"

inherit php-ext-pecl-r1

KEYWORDS="~amd64 ~x86"

DESCRIPTION="Provides full support for RADIUS authentication (RFC 2865) and RADIUS accounting (RFC 2866)."
LICENSE="BSD"
SLOT="0"
IUSE=""

DEPEND=""
RDEPEND=""

need_php_by_category
