# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-fonts/cvs-repo/gentoo-x86/media-fonts/inconsolata/inconsolata-20090222.ebuild,v 1.4 2011/11/04 11:24:10 naota Exp $

inherit font

DESCRIPTION="A beautiful sans-serif monotype font designed for code listings"
HOMEPAGE="http://www.levien.com/type/myfonts/inconsolata.html"
SRC_URI="mirror://gentoo/${P}.tar.bz2"

LICENSE="OFL-1.1"
SLOT="0"
KEYWORDS="amd64 x86 ~x86-fbsd ~ppc-macos ~x64-macos ~x86-macos"
IUSE=""

FONT_SUFFIX="otf"
FONT_S="${WORKDIR}/${P}"

# Only installs fonts.
RESTRICT="strip binchecks"
