# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/virtual/cvs-repo/gentoo-x86/virtual/ghostscript/Attic/ghostscript-0.ebuild,v 1.1 2006/04/01 20:36:47 genstef Exp $

DESCRIPTION="Virtual for Ghostscript"
HOMEPAGE="http://www.ghostscript.com"
SRC_URI=""
LICENSE="as-is"
SLOT="0"
KEYWORDS="alpha amd64 arm hppa ia64 m68k mips ppc ppc-macos ppc64 s390 sh sparc x86 ~x86-fbsd"
IUSE=""
DEPEND="|| (
		app-text/ghostscript-gnu
		app-text/ghostscript-esp
		app-text/ghostscript-afpl
	)"
RDEPEND="${DEPEND}"
