# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-php/cvs-repo/gentoo-x86/dev-php/ezc-Translation/Attic/ezc-Translation-1.1.6.ebuild,v 1.1 2011/12/14 22:22:20 mabi Exp $

EZC_BASE_MIN="1.3.1"
inherit php-ezc depend.php

DESCRIPTION="This eZ component reads XML translation definitions (the Qt Linguist format)
and presents you with a class to apply translations to strings."
SLOT="0"
KEYWORDS="~amd64 ~hppa ~sparc ~x86"
IUSE=""

pkg_setup() {
	require_php_with_use xml
}
