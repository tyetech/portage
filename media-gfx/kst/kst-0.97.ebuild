# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-gfx/cvs-repo/gentoo-x86/media-gfx/kst/Attic/kst-0.97.ebuild,v 1.3 2005/06/05 12:16:34 hansmi Exp $

inherit kde

DESCRIPTION="A plotting and data viewing program for KDE"
HOMEPAGE="http://omega.astro.utoronto.ca/kst/"
SRC_URI="http://omega.astro.utoronto.ca/kst/${P}.tar.gz"

KEYWORDS="amd64 ppc ~sparc x86"
LICENSE="GPL-2"

SLOT="0"
IUSE=""

DEPEND="|| ( kde-base/kdebase-meta >=kde-base/kdebase-3.1 )"
need-kde 3.1
