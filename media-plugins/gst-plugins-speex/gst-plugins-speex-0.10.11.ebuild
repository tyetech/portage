# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-plugins/cvs-repo/gentoo-x86/media-plugins/gst-plugins-speex/Attic/gst-plugins-speex-0.10.11.ebuild,v 1.1 2008/12/05 21:05:01 ssuominen Exp $

inherit gst-plugins-good

DESCRIPTION="GStreamer plugin to allow encoding and decoding of speex"
KEYWORDS="~alpha ~amd64 ~ppc ~ppc64 ~sparc ~x86"
IUSE=""

RDEPEND="media-libs/speex
	>=media-libs/gstreamer-0.10.21
	>=media-libs/gst-plugins-base-0.10.21"
DEPEND="${RDEPEND}
	dev-util/pkgconfig"
