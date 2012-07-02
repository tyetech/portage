# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-plugins/cvs-repo/gentoo-x86/media-plugins/qmmp-plugin-pack/Attic/qmmp-plugin-pack-0.6.0.ebuild,v 1.1 2012/07/02 18:09:15 hwoarang Exp $

EAPI=4

inherit cmake-utils

DESCRIPTION="A set of extra plugins for Qmmp"
HOMEPAGE="http://code.google.com/p/qmmp"
SRC_URI="http://qmmp.googlecode.com/files/${P}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=media-sound/qmmp-0.6.0"
