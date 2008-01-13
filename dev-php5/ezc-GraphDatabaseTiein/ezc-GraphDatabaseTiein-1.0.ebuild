# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-php5/cvs-repo/gentoo-x86/dev-php5/ezc-GraphDatabaseTiein/Attic/ezc-GraphDatabaseTiein-1.0.ebuild,v 1.4 2008/01/13 16:04:39 jokey Exp $

EZC_BASE_MIN="1.3"
inherit php-ezc

DESCRIPTION="This eZ component contains a database writer backend for the Graph component."
SLOT="0"
KEYWORDS="~amd64 ~hppa ~sparc ~x86"
IUSE=""

RDEPEND="${RDEPEND}
	>=dev-php5/ezc-Graph-1.1"
