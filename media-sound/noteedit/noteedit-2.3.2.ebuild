# Copyright 1999-2003 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-sound/cvs-repo/gentoo-x86/media-sound/noteedit/Attic/noteedit-2.3.2.ebuild,v 1.1 2003/09/28 07:57:37 jje Exp $

inherit kde-functions kde

DESCRIPTION="Musical score editor (for Linux)."
HOMEPAGE="http://rnvs.informatik.tu-chemnitz.de/~jan/noteedit/"
SRC_URI="http://rnvs.informatik.tu-chemnitz.de/cgi-bin/nph-sendbin.cgi/~jan/${PN}/${P}.tgz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86"
IUSE="arts"

DEPEND="arts? ( kde-base/kdemultimedia )
	media-libs/tse3"

S=${WORKDIR}/${P}

need-kde 3

