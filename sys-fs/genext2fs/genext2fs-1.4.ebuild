# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sys-fs/cvs-repo/gentoo-x86/sys-fs/genext2fs/genext2fs-1.4.ebuild,v 1.1 2007/03/07 00:16:21 vapier Exp $

DESCRIPTION="generate ext2 file systems"
HOMEPAGE="http://sourceforge.net/projects/genext2fs"
SRC_URI="mirror://sourceforge/${PN}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~hppa ~mips ~ppc ~sparc ~x86"
IUSE=""

DEPEND=""

src_install() {
	emake install DESTDIR="${D}" || die
	dodoc AUTHORS ChangeLog NEWS README TODO
}
