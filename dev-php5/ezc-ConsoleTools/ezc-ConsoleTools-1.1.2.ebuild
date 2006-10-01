# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-php5/cvs-repo/gentoo-x86/dev-php5/ezc-ConsoleTools/Attic/ezc-ConsoleTools-1.1.2.ebuild,v 1.2 2006/10/01 20:40:18 gmsoft Exp $

inherit php-ezc depend.php

DESCRIPTION="This eZ component provides a set of classes to do different actions with the console."
SLOT="0"
KEYWORDS="~amd64 ~hppa ~ppc ~ppc64 ~sparc ~x86"
IUSE=""

pkg_setup() {
	require_php_with_use spl
}
