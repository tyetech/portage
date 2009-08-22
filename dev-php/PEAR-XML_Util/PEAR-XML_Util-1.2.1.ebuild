# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-php/cvs-repo/gentoo-x86/dev-php/PEAR-XML_Util/Attic/PEAR-XML_Util-1.2.1.ebuild,v 1.1 2009/08/22 18:26:30 beandog Exp $

inherit php-pear-r1 depend.php

DESCRIPTION="XML utility class"

LICENSE="PHP-2.02"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86"
IUSE=""

pkg_setup() {
	require_php_with_use pcre
}
