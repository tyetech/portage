# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-php/cvs-repo/gentoo-x86/dev-php/dbunit/Attic/dbunit-1.0.0.ebuild,v 1.1 2011/03/14 12:49:21 olemarkus Exp $

PHP_PEAR_CHANNEL="pear.phpunit.de"
PHP_PEAR_PN="DbUnit"
inherit php-pear-lib-r1


DESCRIPTION="DbUnit port for PHP/PHPUnit"
LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
HOMEPAGE="http://www.phpunit.de"

RDEPEND="${RDEPEND}
	>=dev-php5/ezc-ConsoleTools-1.6
	>=dev-php5/PEAR-File_Iterator-1.2.2
	dev-php5/PEAR-PHP_TokenStream
	dev-php5/PEAR-Text_Template"
