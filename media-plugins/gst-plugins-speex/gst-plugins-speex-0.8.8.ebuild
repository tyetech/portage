# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-plugins/cvs-repo/gentoo-x86/media-plugins/gst-plugins-speex/Attic/gst-plugins-speex-0.8.8.ebuild,v 1.4 2005/05/01 17:26:42 hansmi Exp $

inherit gst-plugins

KEYWORDS="x86 ppc amd64"

DESCRIPTION="GStreamer plugin to allow encoding and decoding of speex"

IUSE=""
RDEPEND=">=media-libs/speex-1.1.6"

DEPEND="${RDEPEND}
	>=dev-util/pkgconfig-0.9"
