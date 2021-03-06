# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/www-apps/cvs-repo/gentoo-x86/www-apps/scgi/scgi-1.12.ebuild,v 1.2 2011/04/11 19:01:23 arfrever Exp $

EAPI="3"

inherit distutils

KEYWORDS="~amd64 ~hppa ~ppc ~x86"

DESCRIPTION="Replacement for the CGI protocol that is similar to FastCGI."
HOMEPAGE="http://www.mems-exchange.org/software/scgi/"
SRC_URI="http://www.mems-exchange.org/software/files/${PN}/${P}.tar.gz"

LICENSE="CNRI"
SLOT="0"
IUSE=""

pkg_postinst() {
	distutils_pkg_postinst
	einfo "This package does not install mod_scgi!"
	einfo "Please 'emerge mod_scgi' if you need it."
}
