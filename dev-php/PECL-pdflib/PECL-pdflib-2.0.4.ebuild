# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-php/cvs-repo/gentoo-x86/dev-php/PECL-pdflib/Attic/PECL-pdflib-2.0.4.ebuild,v 1.1 2005/06/09 05:41:18 sebastian Exp $

PHP_EXT_ZENDEXT="no"
PHP_EXT_PECL_PKG="pdflib"
PHP_EXT_NAME="pdf"
PHP_EXT_INI="yes"

inherit php-ext-pecl

IUSE=""
DESCRIPTION="PHP extension for creating PDF files."
SLOT="0"
LICENSE="PHP"
KEYWORDS="~x86"
DEPEND="${DEPEND}
	media-libs/pdflib"
