# Copyright 1999-2002 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License, v2 or later
# $Header: /usr/local/ssd/gentoo-x86/output/media-sound/cvs-repo/gentoo-x86/media-sound/dimrec/Attic/dimrec-0.1.ebuild,v 1.2 2002/09/23 19:45:02 vapier Exp $

DESCRIPTION="A client/server media player"
SRC_URI="http://bluweb.com/chouser/proj/dimrec/${P}.tar.gz"
HOMEPAGE="http://bluweb.com/chouser/proj/dimrec/"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="x86"

DEPEND="virtual/python
	gtk? ( >=dev-python/pygtk-0.6.9 )
	>=irman-python-0.1"

inherit distutils
