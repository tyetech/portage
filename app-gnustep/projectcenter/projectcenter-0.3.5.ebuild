# Copyright 1999-2003 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-gnustep/cvs-repo/gentoo-x86/app-gnustep/projectcenter/Attic/projectcenter-0.3.5.ebuild,v 1.1 2003/07/15 08:09:24 raker Exp $

inherit gnustep

S=${WORKDIR}/ProjectCenter
A=ProjectCenter-${PV}.tar.gz

DESCRIPTION="GNUstep project developer"
HOMEPAGE="http://www.gnustep.org"
SRC_URI="ftp://ftp.gnustep.org/pub/gnustep/dev-apps/ProjectCenter-${PV}.tar.gz"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="x86"
DEPEND=">=dev-util/gnustep-gui-0.8.5"
