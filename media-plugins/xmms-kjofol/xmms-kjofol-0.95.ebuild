# Copyright 2002, Jens Schittenhelm
# Distributed under the terms of the GNU General Public License, v2 or later
# $Header: /usr/local/ssd/gentoo-x86/output/media-plugins/cvs-repo/gentoo-x86/media-plugins/xmms-kjofol/Attic/xmms-kjofol-0.95.ebuild,v 1.2 2003/07/12 18:40:47 aliz Exp $

S=${WORKDIR}/${PN/ofol}
DESCRIPTION="A xmms remote that allows users to use K-Jofol skins"
SRC_URI="http://www.dgs.monash.edu.au/~timf/kint_xmms-${PV}.tar.gz"
HOMEPAGE="http://www.csse.monash.edu.au/~timf/xmms.html"

DEPEND="media-sound/xmms"

SLOT="0"
LICENSE="GPL-2"
KEYWORDS="x86"

src_compile() {
	emake || die
}

src_install() {
	dobin kj
	dodir /usr/share/xmms/kjofol
	cp *.zip ${D}usr/share/xmms/kjofol
	dodoc readme.txt COPYING
}

pkg_postinst() {
	einfo "This plugin works as a remote for XMMS. Start XMMS before"
	einfo "using this plugin with kj"
	einfo "Place K-Jofol skins in ~/.xmms/kjofol/"
} 
