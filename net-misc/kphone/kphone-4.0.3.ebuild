# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-misc/cvs-repo/gentoo-x86/net-misc/kphone/Attic/kphone-4.0.3.ebuild,v 1.1 2004/07/04 08:59:31 centic Exp $

inherit kde
need-kde 3

DESCRIPTION="A SIP user agent for Linux, with which you can initiate VoIP connections over the Internet."
SRC_URI="http://www.wirlab.net/kphone/${P}.tar.gz"
HOMEPAGE="http://www.wirlab.net/kphone/index.html"

KEYWORDS="~x86"
LICENSE="GPL-2"

IUSE=""
SLOT="0"

S=${WORKDIR}/kphone
src_compile(){
	# Fix for our kde location
	myconf="$myconf --with-extra-libs=$KDEDIR/lib --datadir=${D}/usr/share --prefix=${D}/usr"
	econf ${myconf} || die "econf failed"
	emake
}

