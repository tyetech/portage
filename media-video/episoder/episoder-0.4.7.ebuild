# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-video/cvs-repo/gentoo-x86/media-video/episoder/episoder-0.4.7.ebuild,v 1.1 2008/08/06 23:19:47 aballier Exp $

DESCRIPTION="episoder is a tool to tell you when new episodes of your favourite
TV shows are airing"
HOMEPAGE="http://www.desire.ch/tools/episoder/"
SRC_URI="mirror://sourceforge/episoder/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~x86"
IUSE=""

RDEPEND="net-misc/wget"

src_install() {
	insinto /usr/share/${PN}/
	insopts -m755
	doins scripts/*sh
	doins plugins/*

	dobin scripts/episoder
	dodoc README examples/home.episoder CHANGELOG

	doman episoder.1
}
