# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-plugins/cvs-repo/gentoo-x86/media-plugins/gst-plugins-gsm/gst-plugins-gsm-0.10.22.ebuild,v 1.2 2011/11/13 16:15:40 maekke Exp $

inherit gst-plugins-bad

KEYWORDS="~amd64 ~x86"
IUSE=""
DESCRIPTION="GStreamer plugin for GSM audio decoding/encoding"

RDEPEND="media-sound/gsm
	>=media-libs/gst-plugins-base-0.10.33"
DEPEND="${RDEPEND}"
