# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sys-fs/cvs-repo/gentoo-x86/sys-fs/lsscsi/lsscsi-0.25.ebuild,v 1.8 2012/02/13 10:00:33 xarthisius Exp $

EAPI=2

DESCRIPTION="SCSI sysfs query tool"
HOMEPAGE="http://sg.danny.cz/scsi/lsscsi.html"
SRC_URI="http://sg.danny.cz/scsi/${P}.tgz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="alpha amd64 arm hppa ia64 ~mips ppc ppc64 sparc x86"
IUSE=""

src_install() {
	emake DESTDIR="${D}" install || die
	dodoc AUTHORS CREDITS ChangeLog NEWS README
}
