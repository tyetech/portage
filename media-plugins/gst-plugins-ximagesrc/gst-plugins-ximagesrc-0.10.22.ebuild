# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-plugins/cvs-repo/gentoo-x86/media-plugins/gst-plugins-ximagesrc/Attic/gst-plugins-ximagesrc-0.10.22.ebuild,v 1.5 2010/09/11 10:08:18 nixnut Exp $

inherit gst-plugins-good

KEYWORDS="amd64 ppc ppc64 x86"

IUSE=""
RDEPEND=">=media-libs/gst-plugins-base-0.10.29
	x11-libs/libX11
	x11-libs/libXdamage
	x11-libs/libXfixes"
DEPEND="${RDEPEND}
	x11-proto/xproto"

# xshm is a compile time option of ximage
GST_PLUGINS_BUILD="x xshm"
GST_PLUGINS_BUILD_DIR="ximage"
