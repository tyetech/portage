# Copyright 1999-2001 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License, v2 or later
# Author Bart Verwilst <verwilst@gentoo.org>
# $Header: /usr/local/ssd/gentoo-x86/output/media-video/cvs-repo/gentoo-x86/media-video/kwintv/Attic/kwintv-0.8.11.ebuild,v 1.1 2002/01/12 01:12:24 verwilst Exp $
. /usr/portage/eclass/inherit.eclass || die
inherit kde-base || die

need-kde 2.1

DESCRIPTION="a KDE application that allows you to watch television."
SRC_URI="http://www.staikos.on.ca/~staikos/kwintv/latest/${P}.tar.bz2"
HOMEPAGE="http://www.kwintv.org"
