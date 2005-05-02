# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-misc/cvs-repo/gentoo-x86/net-misc/rdiff-backup/Attic/rdiff-backup-0.12.8.ebuild,v 1.1 2005/05/02 21:15:00 mholzer Exp $

inherit distutils

DESCRIPTION="Remote incremental file backup utility, similar to rsync but more reliable"
SRC_URI="http://savannah.nongnu.org/download/${PN}/${P}.tar.gz"
HOMEPAGE="http://www.nongnu.org/rdiff-backup/"
LICENSE="GPL-2"
KEYWORDS="~x86 ~sparc ~amd64"
IUSE=""
SLOT="0"

RDEPEND=">=net-libs/librsync-0.9.7"

src_compile() {
	distutils_src_compile
}

src_install() {
	distutils_src_install
}
