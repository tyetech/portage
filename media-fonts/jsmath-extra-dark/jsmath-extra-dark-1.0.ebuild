# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-fonts/cvs-repo/gentoo-x86/media-fonts/jsmath-extra-dark/jsmath-extra-dark-1.0.ebuild,v 1.2 2009/12/14 17:22:09 bicatali Exp $

inherit font

DESCRIPTION="Extra raster fonts for jsmath, dark version"
HOMEPAGE="http://www.math.union.edu/~dpvc/jsMath/download/extra-fonts/"
SRC_URI="mirror://gentoo/${P}.tar.bz2"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~x86"
IUSE=""

DEPEND=""
RDEPEND="media-fonts/jsmath
	!media-fonts/jsmath-extra-light"

FONT_SUFFIX="ttf"
