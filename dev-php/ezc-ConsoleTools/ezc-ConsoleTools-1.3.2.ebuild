# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-php/cvs-repo/gentoo-x86/dev-php/ezc-ConsoleTools/Attic/ezc-ConsoleTools-1.3.2.ebuild,v 1.1 2011/12/14 22:04:54 mabi Exp $

EZC_BASE_MIN="1.4.1"
inherit php-ezc depend.php

DESCRIPTION="This eZ component provides a set of classes to do different actions with the console."
SLOT="0"
KEYWORDS="~amd64 ~hppa ~sparc ~x86"
IUSE=""

pkg_setup() {
	require_php_with_use spl
}
