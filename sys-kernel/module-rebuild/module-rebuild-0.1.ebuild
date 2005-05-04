# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sys-kernel/cvs-repo/gentoo-x86/sys-kernel/module-rebuild/Attic/module-rebuild-0.1.ebuild,v 1.2 2005/05/04 04:13:04 swegener Exp $

DESCRIPTION="A utility to rebuild any kernel modules which you have installed."
HOMEPAGE="http://www.gentoo.org/"
SRC_URI=""

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="x86"
IUSE=""

DEPEND=""

src_install() {
	newsbin ${FILESDIR}/${P} ${PN}
}
