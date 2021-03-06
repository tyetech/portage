# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sys-libs/cvs-repo/gentoo-x86/sys-libs/argp-standalone/argp-standalone-1.3.ebuild,v 1.2 2012/08/12 20:15:18 blueness Exp $

EAPI="4"

inherit eutils

DESCRIPTION="Standalone argp library for use with uclibc"
HOMEPAGE="http://www.lysator.liu.se/~nisse/misc/"
SRC_URI="http://www.lysator.liu.se/~nisse/misc/argp-standalone-1.3.tar.gz"

LICENSE="public-domain"
SLOT="0"
KEYWORDS="~amd64 ~mips ~ppc ~x86"
IUSE=""

DEPEND="!sys-libs/glibc"

src_prepare() {
	epatch "${FILESDIR}/${P}-throw-in-funcdef.patch"
}

src_install() {
	dolib.a libargp.a

	insinto /usr/include
	doins argp.h
}
