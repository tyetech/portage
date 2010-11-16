# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-php5/cvs-repo/gentoo-x86/dev-php5/pecl-uploadprogress/Attic/pecl-uploadprogress-1.0.1-r1.ebuild,v 1.2 2010/11/16 13:12:37 fauli Exp $

EAPI=3

inherit php-ext-pecl-r2

DESCRIPTION="An extension to track progress of a file upload."
LICENSE="PHP-3.01"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

pkg_postinst() {
	elog "This extension is only known to work on Apache with mod_php."
}
