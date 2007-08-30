# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-plugins/cvs-repo/gentoo-x86/media-plugins/gst-plugins-v4l2/Attic/gst-plugins-v4l2-0.10.6.ebuild,v 1.1 2007/08/30 19:42:33 drac Exp $

inherit gst-plugins-good

DESCRIPION="plugin to allow capture from video4linux2 devices"

KEYWORDS="~amd64 ~ppc ~x86"

IUSE=""

RDEPEND="x11-drivers/xf86-video-v4l"

DEPEND="${RDEPEND}
	virtual/os-headers
	>=dev-util/pkgconfig-0.9"
