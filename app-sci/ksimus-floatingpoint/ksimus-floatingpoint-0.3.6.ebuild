# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-sci/cvs-repo/gentoo-x86/app-sci/ksimus-floatingpoint/Attic/ksimus-floatingpoint-0.3.6.ebuild,v 1.5 2004/06/29 11:54:37 carlo Exp $

inherit kde

DESCRIPTION="The package Floating Point contains some floating point related components for KSimus."
HOMEPAGE="http://ksimus.berlios.de/"
KEYWORDS="x86"
SRC_URI="http://ksimus.berlios.de/download/ksimus-floatingpoint-3-${PV}.tar.gz"

LICENSE="GPL-2"
IUSE=""
SLOT="0"

DEPEND="app-sci/ksimus"

need-kde 3
