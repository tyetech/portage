# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-zope/cvs-repo/gentoo-x86/net-zope/zopeedit/Attic/zopeedit-0.8.ebuild,v 1.3 2008/05/27 06:37:04 tupone Exp $

inherit distutils

DESCRIPTION="Configurable helper application that drop you into your favorite
editor(s) directly from the ZMI"
HOMEPAGE="http://www.zope.org/Members/Caseman/ExternalEditor/"
SRC_URI="http://www.zope.org/Members/Caseman/ExternalEditor/${PV}/zopeedit-${PV}-src.tgz"

LICENSE="ZPL"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~x86"
IUSE=""

S=${WORKDIR}/${P}-src
