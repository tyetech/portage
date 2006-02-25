# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-php/cvs-repo/gentoo-x86/dev-php/PEAR-Crypt_CHAP/Attic/PEAR-Crypt_CHAP-1.0.0.ebuild,v 1.1 2006/02/25 07:29:10 sebastian Exp $

inherit php-pear-r1 depend.php

DESCRIPTION="Generating CHAP packets."
LICENSE="BSD"
SLOT="0"
KEYWORDS="~x86"
IUSE=""

pkg_setup() {
	require_php_with_use mcrypt mhash
}
