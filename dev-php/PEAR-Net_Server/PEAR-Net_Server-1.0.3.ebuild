# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-php/cvs-repo/gentoo-x86/dev-php/PEAR-Net_Server/PEAR-Net_Server-1.0.3.ebuild,v 1.1 2012/08/05 19:46:59 mabi Exp $

EAPI="4"

inherit php-pear-r1

DESCRIPTION="Generic server class for PHP."

LICENSE="PHP-3.01"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~hppa ~ia64 ~ppc ~ppc64 ~sparc ~x86"
IUSE=""

RDEPEND="dev-lang/php[sockets]"

pkg_postinst() {
	if ! has_version "dev-lang/php[pcntl]" ; then
		elog "${PN} can optionally use dev-lang/php pcntl features."
		elog "If you want those, recompile dev-lang/php with this flag in USE."
	fi
}
