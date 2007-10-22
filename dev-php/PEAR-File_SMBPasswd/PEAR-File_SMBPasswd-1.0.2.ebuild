# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-php/cvs-repo/gentoo-x86/dev-php/PEAR-File_SMBPasswd/Attic/PEAR-File_SMBPasswd-1.0.2.ebuild,v 1.12 2007/10/22 16:23:58 armin76 Exp $

inherit php-pear-r1 depend.php

DESCRIPTION="Class for managing SAMBA style password files."
LICENSE="BSD"
SLOT="0"
KEYWORDS="alpha amd64 hppa ia64 ppc ppc64 sparc x86"
IUSE=""
RDEPEND="dev-php/PEAR-Crypt_CHAP"

pkg_setup() {
	require_php_with_use mhash
}
