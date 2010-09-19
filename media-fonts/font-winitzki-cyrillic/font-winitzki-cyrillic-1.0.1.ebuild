# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-fonts/cvs-repo/gentoo-x86/media-fonts/font-winitzki-cyrillic/Attic/font-winitzki-cyrillic-1.0.1.ebuild,v 1.7 2010/09/19 18:26:32 armin76 Exp $

EAPI=3
inherit xorg-2

DESCRIPTION="X.Org Winitzki cyrillic font"

KEYWORDS="alpha amd64 arm hppa ia64 ~mips ~ppc ~ppc64 s390 sh sparc x86 ~x86-fbsd"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}
	x11-apps/bdftopcf"
