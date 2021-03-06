# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/www-apps/cvs-repo/gentoo-x86/www-apps/horde/horde-3.3.9.ebuild,v 1.7 2010/10/19 02:16:58 jer Exp $

HORDE_PHP_FEATURES="session xml"

inherit horde

DESCRIPTION="Horde Application Framework"
HOMEPAGE="http://www.horde.org/"

KEYWORDS="alpha amd64 hppa ~ia64 ppc sparc x86"
IUSE="mysql"

DEPEND=""
RDEPEND="dev-lang/php
	>=sys-devel/gettext-0.10.40
	>=dev-libs/libxml2-2.4.21
	>=www-apps/horde-pear-1.3
	dev-php/PEAR-Log
	dev-php/PEAR-Mail_Mime
	mysql? ( dev-php/PEAR-DB )"

src_unpack() {
	horde_src_unpack
	cd "${S}"
	chmod 600 scripts/sql/create.*.sql #137510
}

pkg_postinst() {
	horde_pkg_postinst
	elog "Horde requires PHP to have:"
	elog "    ==> 'short_open_tag enabled = On'"
	elog "    ==> 'magic_quotes_runtime set = Off'"
	elog "    ==> 'file_uploads enabled = On'"
}
