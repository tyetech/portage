# Copyright 1999-2004 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-php/cvs-repo/gentoo-x86/dev-php/smarty-docs/Attic/smarty-docs-2.5.0.ebuild,v 1.6 2004/06/19 03:36:00 kloeri Exp $

MY_P=Smarty-${PV}-docs
DESCRIPTION="A template engine for PHP"
HOMEPAGE="http://smarty.php.net/"
SRC_URI="http://smarty.php.net/distributions/manual/en/${MY_P}.tar.gz"
LICENSE="LGPL-2.1"
SLOT="0"
IUSE=""
KEYWORDS="alpha hppa ppc sparc x86"
DEPEND="dev-php/mod_php"

S=${WORKDIR}/manual

src_install() {
	dohtml -r .
}
