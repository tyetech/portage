# Copyright 1999-2002 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License, v2 or later
# $Header: /usr/local/ssd/gentoo-x86/output/app-admin/cvs-repo/gentoo-x86/app-admin/superadduser/Attic/superadduser-1.0-r1.ebuild,v 1.2 2002/07/11 06:30:09 drobbins Exp $

S=${WORKDIR}/${P}
DESCRIPTION="Interactive adduser script"
SRC_URI=""
HOMEPAGE=""

RDEPEND="sys-apps/shadow"

src_install () {
	dosbin ${FILESDIR}/superadduser
	doman ${FILESDIR}/superadduser.8
}
