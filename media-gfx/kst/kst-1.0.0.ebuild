# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-gfx/cvs-repo/gentoo-x86/media-gfx/kst/Attic/kst-1.0.0.ebuild,v 1.1 2004/12/24 01:34:30 ribosome Exp $

inherit kde

DESCRIPTION="A plotting and data viewing program for KDE"
HOMEPAGE="http://omega.astro.utoronto.ca/kst/"
SRC_URI="http://omega.astro.utoronto.ca/kst/${P}.tar.gz"

KEYWORDS="~x86 ~ppc ~sparc ~amd64"
LICENSE="GPL-2"

SLOT="0"
IUSE=""

DEPEND=">=kde-base/kdebase-3.1"
RDEPEND="$DEPEND
	dev-libs/gsl"
need-kde 3.1
