# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-fonts/cvs-repo/gentoo-x86/media-fonts/font-schumacher-misc/Attic/font-schumacher-misc-1.1.0.ebuild,v 1.5 2010/07/22 15:30:01 maekke Exp $

EAPI=3
inherit xorg-2

DESCRIPTION="X.Org Schumacher fonts"

KEYWORDS="~alpha amd64 arm hppa ~ia64 ~mips ~ppc ~ppc64 ~s390 ~sh ~sparc x86 ~x86-fbsd"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}
	x11-apps/bdftopcf"
