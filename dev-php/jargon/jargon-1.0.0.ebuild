# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-php/cvs-repo/gentoo-x86/dev-php/jargon/Attic/jargon-1.0.0.ebuild,v 1.1 2005/03/15 07:49:55 sebastian Exp $

inherit php-pear

DESCRIPTION="Convenience tools built on top of Creole."
HOMEPAGE="http://creole.phpdb.org/wiki/"
LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""
SRC_URI="http://creole.phpdb.org/pear/jargon-${PV}.tgz"
RDEPEND=">=dev-php/php-5.0.0
	dev-php/creole"
