# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-php/cvs-repo/gentoo-x86/dev-php/pecl-ssh2/pecl-ssh2-0.11.2-r1.ebuild,v 1.1 2011/10/23 07:54:56 olemarkus Exp $

EAPI=3

PHP_EXT_NAME="ssh2"
PHP_EXT_INI="yes"
PHP_EXT_ZENDEXT="no"
DOCS="README ChangeLog"

inherit php-ext-pecl-r2

DESCRIPTION="Provides bindings to the functions of libssh2 which implements the SSH2 protocol."
LICENSE="PHP-3"
SLOT="0"
IUSE=""
KEYWORDS="amd64 x86"
DEPEND=">=net-libs/libssh2-0.18"
RDEPEND="${DEPEND}"
