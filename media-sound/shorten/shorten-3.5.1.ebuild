# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-sound/cvs-repo/gentoo-x86/media-sound/shorten/Attic/shorten-3.5.1.ebuild,v 1.9 2004/09/15 17:26:18 eradicator Exp $

IUSE=""

DESCRIPTION="fast, low complexity waveform coder (i.e. audio compressor)"
HOMEPAGE="http://etree.org/shnutils/shorten/"
SRC_URI="http://etree.org/shnutils/shorten/source/${P}.tar.gz"

SLOT="0"
LICENSE="as-is"
KEYWORDS="x86 ~ppc amd64 sparc"

src_install() {
	make DESTDIR=${D} install || die
	dodoc AUTHORS LICENSE ChangeLog NEWS README
}
