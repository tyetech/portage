# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-php/cvs-repo/gentoo-x86/dev-php/PEAR-HTTP/Attic/PEAR-HTTP-1.4.0.ebuild,v 1.12 2006/03/18 13:25:35 jer Exp $

inherit php-pear-r1 depend.php

DESCRIPTION="Miscellaneous HTTP utilities."
LICENSE="PHP"
SLOT="0"
KEYWORDS="alpha amd64 hppa ia64 ~ppc ppc64 sparc x86"
IUSE=""

pkg_setup() {
	require_php_with_use pcre
}
