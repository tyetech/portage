# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-php/cvs-repo/gentoo-x86/dev-php/PEAR-File_Gettext/Attic/PEAR-File_Gettext-0.4.0.ebuild,v 1.9 2007/09/26 17:56:35 ranger Exp $

inherit php-pear-r1 depend.php

DESCRIPTION="GNU Gettext file parser."
LICENSE="PHP"
SLOT="0"
KEYWORDS="~alpha ~amd64 hppa ~ia64 ppc ppc64 ~sparc x86"
IUSE=""

pkg_setup() {
	require_php_with_use pcre
}
