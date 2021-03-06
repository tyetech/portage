# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-php/cvs-repo/gentoo-x86/dev-php/PEAR-Net_FTP/PEAR-Net_FTP-1.4.0_alpha3.ebuild,v 1.2 2012/08/03 20:02:44 olemarkus Exp $

EAPI="4"

inherit php-pear-r1

DESCRIPTION="Provides an OO interface to the PHP FTP functions"

LICENSE="PHP-3"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86"
IUSE=""
RDEPEND="dev-lang/php[ftp]"

src_install() {
	php-pear-r1_src_install
	rm "${D}"/usr/share/php/generate_package_xml.php
}
