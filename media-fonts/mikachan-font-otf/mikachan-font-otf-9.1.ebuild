# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-fonts/cvs-repo/gentoo-x86/media-fonts/mikachan-font-otf/Attic/mikachan-font-otf-9.1.ebuild,v 1.1 2006/10/03 09:39:34 flameeyes Exp $

S="${WORKDIR}/${P}"

inherit font

DESCRIPTION="Mikachan Japanese TrueType Collection fonts"
SRC_URI="mirror://gentoo/${P}.tar.bz2
	http://dev.gentoo.org/~flameeyes/dist/${P}.tar.bz2"
HOMEPAGE="http://mikachan-font.com/"

LICENSE="free-noncomm"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~x86-fbsd"
IUSE=""

FONT_SUFFIX="otf"
