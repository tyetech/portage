# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-php5/cvs-repo/gentoo-x86/dev-php5/ezc-Database/Attic/ezc-Database-1.0.ebuild,v 1.2 2006/01/30 17:43:30 sebastian Exp $

inherit php-ezc depend.php

DESCRIPTION="This eZ component provides a lightweight database layer on top of PDO."
SLOT="0"
KEYWORDS="~x86"
IUSE=""

pkg_setup() {
	require_pdo
}
