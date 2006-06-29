# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-plugins/cvs-repo/gentoo-x86/media-plugins/gst-plugins-taglib/Attic/gst-plugins-taglib-0.10.3.ebuild,v 1.1 2006/06/29 07:27:49 pclouds Exp $

inherit gst-plugins-good

KEYWORDS="~x86"
IUSE=""

RDEPEND=">=media-libs/gst-plugins-base-0.10.3
	>=media-libs/gstreamer-0.10.3
	>=media-libs/taglib-1.4"

DEPEND="${RDEPEND}
	dev-util/pkgconfig"
