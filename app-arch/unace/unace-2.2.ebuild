# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-arch/cvs-repo/gentoo-x86/app-arch/unace/Attic/unace-2.2.ebuild,v 1.12 2004/06/25 23:56:06 vapier Exp $

DESCRIPTION="ACE unarchiver"
HOMEPAGE="http://www.winace.com/"
SRC_URI="http://www.maxeline.com/winace/linunace${PV//.}.tgz"

LICENSE="freedist"
SLOT="0"
KEYWORDS="-* x86 amd64 s390"
IUSE=""

DEPEND="virtual/libc"

S=${WORKDIR}

src_install() {
	into /opt
	dobin unace || die
}
