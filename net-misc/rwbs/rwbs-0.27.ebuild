# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-misc/cvs-repo/gentoo-x86/net-misc/rwbs/Attic/rwbs-0.27.ebuild,v 1.8 2007/04/22 15:56:23 phreak Exp $

DESCRIPTION="Roger Wilco base station"
HOMEPAGE="http://rogerwilco.gamespy.com/"
SRC_URI="http://games.gci.net/pub/VoiceOverIP/RogerWilco/rwbs_Linux_0_27.tar.gz"

LICENSE="Resounding"
KEYWORDS="x86"
IUSE=""
SLOT="0"

# Everything is statically linked
DEPEND=""

S=${WORKDIR}

src_install() {
	dodoc README.TXT CHANGES.TXT
	dobin rwbs run_rwbs

	# Put distribution into /usr/share/rwbs
	insinto /usr/share/rwbs/
	doins "${S}"/anotherpersonjoined "${S}"/helloandwelcome \
		"${S}"/ifucanhearthis "${S}"/invitetestxmit "${S}"/join?.rwc \
		"${S}"/plsstartagame "${S}"/thisisatestmsg

	newconfd "${FILESDIR}"/rwbs.conf rwbs
	newinitd "${FILESDIR}"/rwbs.rc rwbs
}
