# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-php/cvs-repo/gentoo-x86/dev-php/PEAR-Var_Dump/Attic/PEAR-Var_Dump-1.0.3.ebuild,v 1.1 2009/08/22 19:20:09 beandog Exp $

inherit php-pear-r1 depend.php

DESCRIPTION="Provides methods for dumping structured information about a
variable."

LICENSE="PHP-3.01"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~hppa ~ia64 ~ppc ~ppc64 ~sparc ~x86"
IUSE=""

pkg_setup() {
	require_php_with_use pcre
}
