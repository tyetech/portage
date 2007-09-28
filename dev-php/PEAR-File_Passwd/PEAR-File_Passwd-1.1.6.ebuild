# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-php/cvs-repo/gentoo-x86/dev-php/PEAR-File_Passwd/Attic/PEAR-File_Passwd-1.1.6.ebuild,v 1.10 2007/09/28 23:38:00 angelos Exp $

inherit php-pear-r1 depend.php

DESCRIPTION="Manipulate many kinds of password files."
LICENSE="PHP"
SLOT="0"
KEYWORDS="~alpha amd64 hppa ~ia64 ppc ppc64 ~sparc x86"
IUSE=""
RDEPEND="dev-php/PEAR-Crypt_CHAP"

pkg_setup() {
	require_php_with_use pcre
}
