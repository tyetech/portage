# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-php/cvs-repo/gentoo-x86/dev-php/PEAR-Crypt_HMAC2/PEAR-Crypt_HMAC2-1.0.0.ebuild,v 1.3 2012/08/03 19:53:10 olemarkus Exp $

EAPI="4"

inherit php-pear-r1

DESCRIPTION="Implementation of Hashed Message Authentication Code for PHP5"
LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

src_install() {
	php-pear-r1_src_install

	#Useless file that often conflicts with other packages
	rm ${D}/usr/share/php/generate_package_xml.php
}

pkg_postinst() {
	if ! has_version "dev-lang/php[hash]" ; then
		elog "${PN} can use the hash extension when enabled to extend the range"
		elog "of cryptographic hash functions beyond the natively implemented MD5 and SHA1."
		elog "Recompile dev-lang/php with USE=\"hash\" if you want these features."
	fi
}
