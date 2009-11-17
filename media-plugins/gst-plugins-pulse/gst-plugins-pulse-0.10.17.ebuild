# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-plugins/cvs-repo/gentoo-x86/media-plugins/gst-plugins-pulse/Attic/gst-plugins-pulse-0.10.17.ebuild,v 1.1 2009/11/17 04:27:51 leio Exp $

inherit gst-plugins-good

DESCRIPTION="GStreamer plugin for the PulseAudio sound server"
KEYWORDS="~alpha ~amd64 ~ppc ~ppc64 ~sparc ~x86"
IUSE=""

# >=0.9.15 ensures working per-stream volume
# The dep can be reduced if necessary for stabilization
RDEPEND=">=media-sound/pulseaudio-0.9.15
	>=media-libs/gstreamer-0.10.25
	>=media-libs/gst-plugins-base-0.10.25"
DEPEND="${RDEPEND}"
