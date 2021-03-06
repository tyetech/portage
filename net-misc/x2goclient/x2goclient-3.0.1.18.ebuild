# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-misc/cvs-repo/gentoo-x86/net-misc/x2goclient/x2goclient-3.0.1.18.ebuild,v 1.4 2012/06/08 11:42:07 voyageur Exp $

EAPI=4
inherit eutils qt4-r2

DESCRIPTION="The X2Go Qt client"
HOMEPAGE="http://www.x2go.org"
SRC_URI="http://code.x2go.org/releases/source/${PN}/${P/-/_}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="ldap"

DEPEND="net-libs/libssh
	net-print/cups
	x11-libs/qt-core:4[ssl]
	x11-libs/qt-gui:4
	x11-libs/qt-svg:4
	ldap? ( net-nds/openldap )"
RDEPEND="${DEPEND}
	net-misc/nx"

S=${WORKDIR}/${P/-/_}

src_prepare() {
	# qmake looks for these files in the main directory
	mv x2goclient/* . && rmdir x2goclient || die
	epatch "${FILESDIR}"/${P}-cups1.5.patch
	if ! use ldap; then
		sed -e "s/-lldap//" -i x2goclient.pro || die
		sed -e "s/#define USELDAP//" -i x2goclientconfig.h || die
	fi
}

src_install() {
	dobin ${PN}

	insinto /usr/share/pixmaps/x2goclient
	doins -r icons/*

	make_desktop_entry ${PN} "X2go client" ${PN} "Network"
}
