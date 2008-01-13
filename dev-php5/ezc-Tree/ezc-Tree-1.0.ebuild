# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-php5/cvs-repo/gentoo-x86/dev-php5/ezc-Tree/Attic/ezc-Tree-1.0.ebuild,v 1.1 2008/01/13 16:09:16 jokey Exp $

EZC_BASE_MIN="1.4"
inherit php-ezc

DESCRIPTION="This eZ component handles the creating, manipulating and querying of tree structures."
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="${RDEPEND}
	>=dev-lang/php-5.2.1"
