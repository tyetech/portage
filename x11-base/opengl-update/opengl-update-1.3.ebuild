# Copyright 1999-2002 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License, v2 or later
# Maintainer:  Martin Schlemmer <azarah@gentoo.org>
# $Header: /usr/local/ssd/gentoo-x86/output/x11-base/cvs-repo/gentoo-x86/x11-base/opengl-update/Attic/opengl-update-1.3.ebuild,v 1.2 2002/07/09 11:46:53 aliz Exp $

S=${WORKDIR}/${P}
SLOT="0"
KEYWORDS="x86"
DESCRIPTION="Utility to change the OpenGL interface being used."
SRC_URI=""
HOMEPAGE="http://"

DEPEND=""


src_install() {

	newsbin ${FILESDIR}/opengl-update-${PV} opengl-update
}

