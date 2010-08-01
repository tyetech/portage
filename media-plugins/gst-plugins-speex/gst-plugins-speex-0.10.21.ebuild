# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-plugins/cvs-repo/gentoo-x86/media-plugins/gst-plugins-speex/Attic/gst-plugins-speex-0.10.21.ebuild,v 1.6 2010/08/01 20:28:18 klausman Exp $

inherit gst-plugins-good

DESCRIPTION="GStreamer plugin to allow encoding and decoding of speex"
KEYWORDS="alpha amd64 ~arm hppa ~ia64 ppc ~ppc64 ~sparc x86 ~x86-fbsd"
IUSE=""

RDEPEND=">=media-libs/speex-1.1.6
	>=media-libs/gstreamer-0.10.27
	>=media-libs/gst-plugins-base-0.10.27"
DEPEND="${RDEPEND}"
