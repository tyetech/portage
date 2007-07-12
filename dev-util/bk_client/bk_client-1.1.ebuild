# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-util/cvs-repo/gentoo-x86/dev-util/bk_client/Attic/bk_client-1.1.ebuild,v 1.3 2007/07/12 01:05:42 mr_bones_ Exp $

inherit eutils

DESCRIPTION="Stripped, read only bitkeeper scm"
HOMEPAGE="http://www.bitmover.com"
SRC_URI="http://www.bitmover.com/bk-client.shar"

LICENSE="NWL"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""
RDEPEND=""
DEPEND=""

src_unpack() {
	/bin/sh ${DISTDIR}/${A} || die
}

src_compile() {
	cd ${S}
	emake || die "build failed"
}

src_install() {
	dobin sfio
	dobin sfioball
	dobin update

	dodoc demo.sh doc/*
}
