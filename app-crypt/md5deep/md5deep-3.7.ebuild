# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-crypt/cvs-repo/gentoo-x86/app-crypt/md5deep/md5deep-3.7.ebuild,v 1.2 2012/03/18 15:11:26 armin76 Exp $

DESCRIPTION="Expanded md5sum program with recursive and comparison options"
HOMEPAGE="http://md5deep.sourceforge.net/"
SRC_URI="mirror://sourceforge/${PN}/${P}.tar.gz"

LICENSE="public-domain GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~x86 ~amd64-linux ~x86-linux ~ppc-macos"
IUSE=""

src_install() {
	emake DESTDIR="${D}" install || die
	dodoc AUTHORS ChangeLog NEWS README TODO
}
