# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-misc/cvs-repo/gentoo-x86/app-misc/releaseforge/Attic/releaseforge-1.1.ebuild,v 1.1 2007/01/27 10:45:47 masterdriverz Exp $

inherit distutils

DESCRIPTION="GUI utility for making software releases on SourceForge"
HOMEPAGE="http://releaseforge.sourceforge.net/"
SRC_URI="mirror://sourceforge/releaseforge/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=">=dev-lang/python-2.3
	>=dev-python/PyQt-3.0.0"
