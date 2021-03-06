# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-misc/cvs-repo/gentoo-x86/net-misc/rwbs/rwbs-0.27-r1.ebuild,v 1.2 2012/07/12 15:30:20 axs Exp $

EAPI=4

DESCRIPTION="Roger Wilco base station"
HOMEPAGE="http://rogerwilco.gamespy.com/"
SRC_URI="http://games.gci.net/pub/VoiceOverIP/RogerWilco/rwbs_Linux_0_27.tar.gz"

SLOT="0"
LICENSE="Resounding GPL-2"
KEYWORDS="x86"
IUSE=""

# Everything is statically linked
DEPEND=""

S=${WORKDIR}

src_install() {
	dodoc README.TXT CHANGES.TXT
	exeinto /opt/bin
	doexe rwbs run_rwbs

	# Put distribution into /usr/share/rwbs
	insinto /usr/share/rwbs/
	doins "${S}"/anotherpersonjoined "${S}"/helloandwelcome \
		"${S}"/ifucanhearthis "${S}"/invitetestxmit "${S}"/join?.rwc \
		"${S}"/plsstartagame "${S}"/thisisatestmsg

	newconfd "${FILESDIR}"/rwbs.conf rwbs
	newinitd "${FILESDIR}"/rwbs.rc rwbs
}
