# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-radio/cvs-repo/gentoo-x86/media-radio/qsstv/Attic/qsstv-5.3c.ebuild,v 1.2 2005/03/31 03:44:09 killsoft Exp $

inherit kde

DESCRIPTION="Amateur radio SSTV software"
HOMEPAGE="http://users.telenet.be/on4qz/"
SRC_URI="http://users.telenet.be/on4qz/download/${P}.tar.gz"

SLOT="0"
KEYWORDS="x86 ~ppc"
LICENSE="GPL-2"
IUSE=""

need-kde 3
