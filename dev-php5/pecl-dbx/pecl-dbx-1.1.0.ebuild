# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-php5/cvs-repo/gentoo-x86/dev-php5/pecl-dbx/Attic/pecl-dbx-1.1.0.ebuild,v 1.7 2007/03/17 23:50:25 chtekk Exp $

PHP_EXT_NAME="dbx"
PHP_EXT_INI="yes"
PHP_EXT_ZENDEXT="no"

inherit php-ext-pecl-r1

KEYWORDS="~amd64 ~ppc ~ppc64 ~sparc ~x86"

DESCRIPTION="The dbx module is a database abstraction layer."
LICENSE="PHP"
SLOT="0"
IUSE=""

DEPEND=""
RDEPEND=""

need_php_by_category
