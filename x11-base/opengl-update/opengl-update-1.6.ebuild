# Copyright 1999-2004 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-base/cvs-repo/gentoo-x86/x11-base/opengl-update/Attic/opengl-update-1.6.ebuild,v 1.2 2004/04/28 22:18:25 vapier Exp $

DESCRIPTION="Utility to change the OpenGL interface being used"
HOMEPAGE="http://www.gentoo.org/"
SRC_URI=""

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86 ~ppc ~sparc ~mips ~alpha arm ~hppa ~amd64 ~ia64"
IUSE=""

DEPEND="virtual/glibc"

src_install() {
	newsbin ${FILESDIR}/opengl-update-${PV} opengl-update || die
}
