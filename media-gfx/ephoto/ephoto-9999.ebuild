# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-gfx/cvs-repo/gentoo-x86/media-gfx/ephoto/Attic/ephoto-9999.ebuild,v 1.1 2006/02/24 02:42:58 vapier Exp $

ECVS_MODULE="e17/proto/ephoto"
inherit enlightenment

DESCRIPTION="EFL-based slideshow creator"

IUSE="nls"

DEPEND="x11-libs/evas
	x11-libs/ecore
	x11-libs/ewl
	media-libs/edje"

src_compile() {
	export MY_ECONF="
		$(use_enable nls)
	"
	enlightenment_src_compile
}
