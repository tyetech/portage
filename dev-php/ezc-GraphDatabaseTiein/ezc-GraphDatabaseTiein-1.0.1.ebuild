# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-php/cvs-repo/gentoo-x86/dev-php/ezc-GraphDatabaseTiein/ezc-GraphDatabaseTiein-1.0.1.ebuild,v 1.1 2011/12/14 22:12:05 mabi Exp $

EZC_BASE_MIN="1.8"
inherit php-ezc

DESCRIPTION="This eZ component contains a database writer backend for the Graph component."
SLOT="0"
KEYWORDS="~amd64 ~hppa ~sparc ~x86"
IUSE=""

RDEPEND="${RDEPEND}
	>=dev-php/ezc-Graph-1.1"
