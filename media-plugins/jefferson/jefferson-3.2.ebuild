# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-plugins/cvs-repo/gentoo-x86/media-plugins/jefferson/Attic/jefferson-3.2.ebuild,v 1.3 2004/06/24 23:32:01 agriffis Exp $

IUSE=""

inherit kde-base
need-kde 3

DESCRIPTION="On Screen Display plugin for Noatun"
HOMEPAGE="http://www.freekde.org/neil/jefferson/"
SRC_URI="http://www.freekde.org/neil/jefferson/${P}.tar.bz2"

LICENSE="MIT"
KEYWORDS="x86"

newdepend ">=kde-base/kdemultimedia-3.0"
