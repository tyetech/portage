# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-plugins/cvs-repo/gentoo-x86/media-plugins/gst-plugins-sidplay/gst-plugins-sidplay-0.10.16.ebuild,v 1.5 2011/03/23 17:45:51 xarthisius Exp $

inherit gst-plugins-ugly

KEYWORDS="alpha amd64 ppc ppc64 sparc x86"
IUSE=""

RDEPEND="=media-libs/libsidplay-1.3*
	 >=media-libs/gstreamer-0.10.26
	 >=media-libs/gst-plugins-base-0.10.26"
DEPEND="${RDEPEND}"
