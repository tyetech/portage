# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-fonts/cvs-repo/gentoo-x86/media-fonts/font-bh-75dpi/font-bh-75dpi-1.0.3.ebuild,v 1.9 2012/05/15 14:07:15 aballier Exp $

EAPI=3
inherit xorg-2

DESCRIPTION="X.Org Bigelow & Holmes bitmap fonts"

KEYWORDS="alpha amd64 arm hppa ia64 ~mips ppc ppc64 s390 sh sparc x86 ~amd64-fbsd ~x86-fbsd"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}
	x11-apps/bdftopcf"
