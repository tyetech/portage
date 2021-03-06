# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-php/cvs-repo/gentoo-x86/dev-php/pecl-mailparse/pecl-mailparse-2.1.6.ebuild,v 1.3 2012/08/24 05:00:09 xmw Exp $

EAPI=4

PHP_EXT_NAME="mailparse"
PHP_EXT_INI="yes"
PHP_EXT_ZENDEXT="no"
DOCS="README"

USE_PHP="php5-3 php5-4"

inherit php-ext-pecl-r2

KEYWORDS="amd64 ppc ~ppc64 ~x86"

DESCRIPTION="A PHP extension for parsing and working with RFC822 and RFC2045 (MIME) compliant messages."
LICENSE="PHP-2.02"
SLOT="0"
IUSE=""

RDEPEND="dev-lang/php[unicode]"
DEPEND="${RDEPEND}
	dev-util/re2c"
