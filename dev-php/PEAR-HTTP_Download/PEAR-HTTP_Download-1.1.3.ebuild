# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-php/cvs-repo/gentoo-x86/dev-php/PEAR-HTTP_Download/Attic/PEAR-HTTP_Download-1.1.3.ebuild,v 1.2 2007/12/06 00:21:06 jokey Exp $

inherit php-pear-r1 depend.php eutils

DESCRIPTION="Provides functionality to send HTTP downloads."
LICENSE="BSD-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="minimal"
RDEPEND="dev-php/PEAR-HTTP_Header
	!minimal? ( dev-php/PEAR-MIME_Type )"

pkg_setup() {
	require_php_with_use pcre
}

pkg_postinst() {
	has_php
	if ! use minimal && ! built_with_use --missing true =${PHP_PKG} postgres ; then
		elog "${PN} can optionally use ${PHP_PKG} postgres features."
		elog "If you want those, recompile ${PHP_PKG} with this flags in USE."
	fi
}
