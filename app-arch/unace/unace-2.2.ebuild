# Copyright 1999-2003 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-arch/cvs-repo/gentoo-x86/app-arch/unace/Attic/unace-2.2.ebuild,v 1.6 2003/10/02 02:01:46 vapier Exp $

DESCRIPTION="ACE unarchiver"
HOMEPAGE="http://www.winace.com/"
SRC_URI="http://ace.edskes.com/winace/linunace${PV//.}.tgz"

LICENSE="freedist"
SLOT="0"
KEYWORDS="-* x86"

DEPEND="virtual/glibc"

S=${WORKDIR}

src_install() {
	into /opt
	dobin unace
}
