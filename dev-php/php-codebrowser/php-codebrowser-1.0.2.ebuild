# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-php/cvs-repo/gentoo-x86/dev-php/php-codebrowser/php-codebrowser-1.0.2.ebuild,v 1.1 2012/06/11 15:43:27 mabi Exp $

EAPI=4

PHP_PEAR_CHANNEL="${FILESDIR}/channel.xml"
PHP_PEAR_URI="pear.phpunit.de"
PHP_PEAR_PN="PHP_CodeBrowser"
inherit php-pear-lib-r1

DESCRIPTION="Generates a highlighted code browsing parsed from xml reports generated from codesniffer or phpunit."
LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
HOMEPAGE="http://pear.phpunit.de"

RDEPEND="${RDEPEND}
	>=dev-php/PEAR-Console_CommandLine-1.1.3
	>=dev-php/File_Iterator-1.3.0
	>=dev-php/PEAR-Log-1.12.1"
