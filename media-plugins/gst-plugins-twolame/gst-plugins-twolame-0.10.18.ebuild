# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-plugins/cvs-repo/gentoo-x86/media-plugins/gst-plugins-twolame/gst-plugins-twolame-0.10.18.ebuild,v 1.5 2011/10/15 18:35:20 xarthisius Exp $

inherit gst-plugins-ugly

KEYWORDS="alpha amd64 ppc ppc64 sparc x86"
IUSE=""

RDEPEND=">=media-sound/twolame-0.3.10
	>=media-libs/gstreamer-0.10.26
	>=media-libs/gst-plugins-base-0.10.26"
DEPEND="${RDEPEND}"
