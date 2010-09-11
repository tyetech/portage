# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-plugins/cvs-repo/gentoo-x86/media-plugins/gst-plugins-libpng/Attic/gst-plugins-libpng-0.10.22.ebuild,v 1.7 2010/09/11 10:03:18 nixnut Exp $

inherit gst-plugins-good

DESCRIPTION="GStreamer encoder/decoder for PNG images"
KEYWORDS="alpha amd64 ~arm ppc ppc64 sparc x86"
IUSE=""

RDEPEND=">=media-libs/libpng-1.4
	>=media-libs/gst-plugins-base-0.10.29"
DEPEND="${RDEPEND}"
