# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-plugins/cvs-repo/gentoo-x86/media-plugins/gst-plugins-raw1394/gst-plugins-raw1394-0.10.30.ebuild,v 1.4 2011/10/15 18:35:17 xarthisius Exp $

inherit gst-plugins-good

DESCRIPTION="GStreamer plugin to capture firewire video"
KEYWORDS="amd64 ppc ppc64 x86"
IUSE=""

RDEPEND=">=media-libs/libiec61883-1.0.0
	>=sys-libs/libraw1394-2.0.0
	sys-libs/libavc1394
	>=media-libs/gst-plugins-base-0.10.33"
DEPEND="${RDEPEND}"

GST_PLUGINS_BUILD="dv1394"
GST_PLUGINS_BUILD_DIR="raw1394"
