# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-libs/cvs-repo/gentoo-x86/dev-libs/oniguruma/Attic/oniguruma-2.5.9.ebuild,v 1.1 2007/08/11 16:48:18 matsuu Exp $

MY_P="onigd${PV//./_}"

DESCRIPTION="Regular expression library"
HOMEPAGE="http://www.geocities.jp/kosako3/oniguruma/"
SRC_URI="http://www.geocities.jp/kosako3/oniguruma/archive/${MY_P}.tar.gz"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~ppc ~x86"
IUSE=""

S="${WORKDIR}/${PN}"

src_install() {
	dodir /usr
	emake prefix="${D}usr" install || die

	dodoc HISTORY README doc/*
}
