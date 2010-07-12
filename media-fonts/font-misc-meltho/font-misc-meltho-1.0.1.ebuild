# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-fonts/cvs-repo/gentoo-x86/media-fonts/font-misc-meltho/Attic/font-misc-meltho-1.0.1.ebuild,v 1.2 2010/07/12 10:54:06 hwoarang Exp $

FONT_DIR="OTF"

EAPI=3
inherit xorg-2

DESCRIPTION="X.Org Syriac fonts"

KEYWORDS="~alpha amd64 ~arm ~hppa ~ia64 ~m68k ~mips ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86 ~x86-fbsd"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}
	x11-apps/bdftopcf"
