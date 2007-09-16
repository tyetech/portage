# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-php/cvs-repo/gentoo-x86/dev-php/PEAR-I18Nv2/Attic/PEAR-I18Nv2-0.11.4.ebuild,v 1.2 2007/09/16 06:03:39 jer Exp $

inherit php-pear-r1 depend.php

DESCRIPTION="Internationalization - basic support to localize your application."
LICENSE="BSD"
SLOT="0"
KEYWORDS="~alpha ~amd64 hppa ~ia64 ~ppc ~ppc64 ~sparc ~x86"
IUSE=""

pkg_setup() {
	require_php_with_use pcre iconv
}
