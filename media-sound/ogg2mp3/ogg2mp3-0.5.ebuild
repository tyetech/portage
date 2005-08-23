# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-sound/cvs-repo/gentoo-x86/media-sound/ogg2mp3/Attic/ogg2mp3-0.5.ebuild,v 1.3 2005/08/23 22:32:04 chainsaw Exp $

IUSE=""

DESCRIPTION="A perl script to convert Ogg Vorbis files to MP3 files."

HOMEPAGE="http://amor.cms.hu-berlin.de/~h0444y2j/linux.html"
SRC_URI="http://amor.cms.hu-berlin.de/~h0444y2j/pub/${P}.tar.bz2"

LICENSE="GPL-2"

SLOT="0"
KEYWORDS="~amd64 ~ppc x86"

RDEPEND="media-sound/lame
	dev-perl/String-ShellQuote
	media-sound/vorbis-tools"

src_install() {
	dobin ogg2mp3
}
