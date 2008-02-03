# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-php/cvs-repo/gentoo-x86/dev-php/PEAR-File_Gettext/Attic/PEAR-File_Gettext-0.4.1.ebuild,v 1.4 2008/02/03 11:45:50 maekke Exp $

inherit php-pear-r1 depend.php

DESCRIPTION="GNU Gettext file parser."
LICENSE="BSD-2"
SLOT="0"
KEYWORDS="~alpha ~amd64 hppa ~ia64 ~ppc ppc64 ~sparc x86"
IUSE=""

pkg_setup() {
	require_php_with_use pcre
}
