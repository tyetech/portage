# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-php/cvs-repo/gentoo-x86/dev-php/YAML/YAML-1.0.6.ebuild,v 1.3 2012/09/17 21:39:51 johu Exp $

EAPI=4

PEAR_PV="1.0.6"
PHP_PEAR_PKG_NAME="YAML"

inherit php-pear-r1

DESCRIPTION="The Symfony YAML Component."
HOMEPAGE="pear.symfony-project.com"
SRC_URI="http://pear.symfony-project.com//get/YAML-1.0.6.tgz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

DEPEND=">=dev-lang/php-5.2.4
	>=dev-php/pear-1.4.1"
RDEPEND="${DEPEND}"
