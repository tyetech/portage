# Copyright 2002 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License, v2 or later
# $Header: /usr/local/ssd/gentoo-x86/output/media-video/cvs-repo/gentoo-x86/media-video/kxine/Attic/kxine-0.4.ebuild,v 1.1 2002/07/30 13:39:30 danarmak Exp $
inherit kde-base
need-kde 3

DESCRIPTION="A simple KDE interface to the xine library"
SRC_URI="mirror://sourceforge/kxine/${P}.tar.gz"
HOMEPAGE="http://kxine.sourceforge.net/"
newdepend ">=media-libs/xine-lib-0.9.9"
KEYWORDS="x86"
LICENSE="GPL-2"

PATCHES="$FILESDIR/$P-gentoo.diff"

