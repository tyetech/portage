# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-mail/cvs-repo/gentoo-x86/net-mail/qtools/qtools-0.56.ebuild,v 1.11 2006/06/06 01:36:14 eradicator Exp $

inherit eutils toolchain-funcs

DESCRIPTION="Several utilities for use with qmail, typically as part of .qmail command processing"
HOMEPAGE="http://www.superscript.com/qtools/intro.html"
SRC_URI="http://www.superscript.com/qtools/${P}.tar.gz"
LICENSE="as-is"
SLOT="0"
KEYWORDS="alpha ~amd64 ~hppa ~mips ppc ~sparc x86"
IUSE="static"

DEPEND=""

src_unpack() {
	unpack ${A}
	cd ${S}
	epatch ${FILESDIR}/${P}-errno.patch
	epatch ${FILESDIR}/${P}-head.patch
}

src_compile() {
	use static && LDFLAGS="${LDFLAGS} -static"
	export CC="$(tc-getCC)"
	echo "${CC} ${CFLAGS}" > conf-cc
	echo "${CC} ${LDFLAGS}" > conf-ld
	echo "/usr" > conf-home
	emake || die "emake failed"
}

src_install() {
	into /usr
	dobin 822addr 822body 822bodyfilter 822fields 822headerfilter \
		  822headerok 822headers checkaddr checkdomain \
		  condtomaildir filterto ifaddr iftoccfrom replier \
		  replier-config tomaildir

	dodoc BAPVERSION CHANGES FILES README SYSDEPS TARGETS TODO VERSION
}
