# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-php5/cvs-repo/gentoo-x86/dev-php5/ezc-Database/Attic/ezc-Database-1.3.3.ebuild,v 1.1 2008/01/13 16:01:37 jokey Exp $

EZC_BASE_MIN="1.3.1"
inherit php-ezc depend.php

DESCRIPTION="This eZ component provides a lightweight database layer on top of PDO."
SLOT="0"
KEYWORDS="~amd64 ~hppa ~sparc ~x86"
IUSE=""

pkg_setup() {
	require_php_with_use pdo
}
