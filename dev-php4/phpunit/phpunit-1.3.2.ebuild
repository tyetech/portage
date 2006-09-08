# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-php4/cvs-repo/gentoo-x86/dev-php4/phpunit/Attic/phpunit-1.3.2.ebuild,v 1.1 2006/09/08 08:24:41 sebastian Exp $

inherit php-pear-lib-r1

DESCRIPTION="Unit Testing framework for PHP 4."
HOMEPAGE="http://www.phpunit.de/"
LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~sparc ~x86"
IUSE=""
DEPEND="!dev-php5/phpunit"
SRC_URI="http://pear.phpunit.de/get/PHPUnit-${PV}.tgz"
S="${WORKDIR}/PHPUnit-${PV}"
