# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-php/cvs-repo/gentoo-x86/dev-php/symfony/symfony-1.4.18.ebuild,v 1.3 2012/09/28 12:49:07 ago Exp $

EAPI=4
inherit php-pear-lib-r1

DESCRIPTION="Open-source PHP5 professional web framework"
HOMEPAGE="http://www.symfony-project.com/"
SRC_URI="http://pear.symfony-project.com/get/${P}.tgz"

LICENSE="MIT LGPL-2.1 BSD BSD-2 FDL-1.2"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

DEPEND="dev-lang/php[cli,ctype,session,simplexml,tokenizer,xml]
		dev-php/pear"
RDEPEND="${DEPEND}"

pkg_postinst() {
	if has_version '=dev-lang/php-5*[-posix]';then
		einfo ""
		einfo "To enable color output on the symfony command line"
		einfo "add USE=\"posix\" to dev-lang/php"
		einfo ""
	fi
}
