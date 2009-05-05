# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-apps/cvs-repo/gentoo-x86/x11-apps/beforelight/Attic/beforelight-1.0.1.ebuild,v 1.7 2009/05/05 07:26:54 fauli Exp $

# Must be before x-modular eclass is inherited
#SNAPSHOT="yes"

inherit x-modular

DESCRIPTION="screen saver"
KEYWORDS="arm ~mips ~ppc ~ppc64 s390 sh ~sparc x86"
IUSE=""
RDEPEND="x11-libs/libX11
	x11-libs/libXScrnSaver
	x11-libs/libXt
	x11-libs/libXaw"
DEPEND="${RDEPEND}"
