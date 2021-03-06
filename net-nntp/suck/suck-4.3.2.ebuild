# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-nntp/cvs-repo/gentoo-x86/net-nntp/suck/suck-4.3.2.ebuild,v 1.2 2007/04/18 21:53:43 philantrop Exp $

DESCRIPTION="Grab news from a remote NNTP server and feed them to another"
HOMEPAGE="http://home.comcast.net/~bobyetman/"
SRC_URI="http://home.comcast.net/~bobyetman/${P}.tar.gz"
LICENSE="public-domain"
SLOT="0"
KEYWORDS="~amd64 ~ppc x86"
IUSE="ssl perl"

DEPEND="sys-libs/db
	perl? ( sys-devel/libperl )
	ssl? ( dev-libs/openssl )"

src_unpack() {
	unpack ${A}
	cd ${S}

	# Fix paths to the locations in Gentoo
	sed -i \
		-e 's:/usr/lib/news/rnews:/usr/lib/news/bin/rnews:' \
		-e 's:/usr/news/db/history:/var/spool/news/db/history:' \
		suck_config.h
}

src_compile() {
	use ssl || sed -i -e 's/^SSL_/#SSL_/' Makefile.in
	use perl || sed -i -e 's/^PERL_/#PERL_/' Makefile.in

	econf || die "econf failed"

	emake phrases.h || die "emake phrases.h failed"
	emake all lpost || die "emake failed"
}

src_install() {
	dobin lmove lpost rpost suck testhost
	doman man/*
	dodoc CHANGELOG CONTENTS README*
	docinto java
	dodoc java/*
	docinto perl
	dodoc perl/*
	docinto sample
	dodoc sample/*
}
