# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-pda/cvs-repo/gentoo-x86/app-pda/libopensync-plugin-vformat/Attic/libopensync-plugin-vformat-0.35.ebuild,v 1.1 2007/12/21 23:21:54 peper Exp $

inherit cmake-utils

DESCRIPTION="OpenSync VFormat Plugin"
HOMEPAGE="http://www.opensync.org"
SRC_URI="http://www.opensync.org/download/releases/${PV}/${P}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="=app-pda/libopensync-${PV}*"
RDEPEND="${DEPEND}"

# Don't pass
RESTRICT="test"
