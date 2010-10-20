# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-php5/cvs-repo/gentoo-x86/dev-php5/ezc-ConsoleTools/Attic/ezc-ConsoleTools-1.6.1-r1.ebuild,v 1.3 2010/10/20 14:18:05 hwoarang Exp $

EAPI="2"

EZC_BASE_MIN="1.8"
inherit php-ezc

DESCRIPTION="This eZ component provides a set of classes to do different actions with the console."
SLOT="0"
KEYWORDS="amd64 ~hppa ~sparc x86"
IUSE=""

DEPEND="|| ( <dev-lang/php-5.3[spl] >=dev-lang/php-5.3 )"
RDEPEND="${DEPEND}"
