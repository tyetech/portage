# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-php/cvs-repo/gentoo-x86/dev-php/ezc-Database/ezc-Database-1.4.7.ebuild,v 1.2 2012/01/29 16:19:57 mabi Exp $

EAPI=4

EZC_BASE_MIN="1.8"
inherit php-ezc

DESCRIPTION="This eZ component provides a lightweight database layer on top of PDO."
SLOT="0"
KEYWORDS="~amd64 ~hppa ~sparc ~x86"
IUSE=""

RDEPEND="dev-lang/php[pdo]"
