# Copyright 1999-2004 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-plugins/cvs-repo/gentoo-x86/media-plugins/tap-plugins/Attic/tap-plugins-0.1.ebuild,v 1.2 2004/03/26 21:02:38 eradicator Exp $
#

DESCRIPTION="tap ladspa plugins package. Equalizer, Reverb, Stereo Echo, Tremolo"
HOMEPAGE="http://www.hszk.bme.hu/~st444/tap/tap.html"
SRC_URI="http://www.hszk.bme.hu/~st444/tap/tap-0.1-1.tar.gz"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="x86"

IUSE=""

DEPEND="media-libs/ladspa-sdk"

S=${WORKDIR}/tap-0.1-1

src_compile() {
	make || die
}

src_install() {
	dodoc COPYING README
	dohtml ${S}/doc/*
	insinto /usr/lib/ladspa
	insopts -m0755
	doins *.so
	insinto /usr/share/ladspa/rdf
	insopts -m0644
	doins *.rdf

}
