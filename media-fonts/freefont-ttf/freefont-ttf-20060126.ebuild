# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-fonts/cvs-repo/gentoo-x86/media-fonts/freefont-ttf/Attic/freefont-ttf-20060126.ebuild,v 1.3 2007/09/08 01:45:48 josejx Exp $

inherit font

DESCRIPTION="TrueType Unicode fonts from the Free UCS Outline Fonts Project"
HOMEPAGE="http://savannah.nongnu.org/projects/freefont/"
SRC_URI="http://download.savannah.nongnu.org/releases/freefont/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~ppc64 ~x86"

FONT_SUFFIX="ttf"
S="${WORKDIR}/freefont-${PV}"
FONT_S="${S}"
DOCS="CREDITS"

RESTRICT="strip binchecks"
