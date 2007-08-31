# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-php5/cvs-repo/gentoo-x86/dev-php5/ezc-PersistentObject/Attic/ezc-PersistentObject-1.3.ebuild,v 1.2 2007/08/31 14:59:21 jer Exp $

inherit php-ezc

DESCRIPTION="This eZ component allows you to store an arbitrary data structures to a fixed database table."
SLOT="0"
KEYWORDS="~amd64 ~hppa ~x86"
IUSE=""

RDEPEND="${RDEPEND}
	>=dev-php5/ezc-Database-1.3"
