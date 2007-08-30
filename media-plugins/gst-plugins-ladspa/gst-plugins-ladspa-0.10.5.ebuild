# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-plugins/cvs-repo/gentoo-x86/media-plugins/gst-plugins-ladspa/Attic/gst-plugins-ladspa-0.10.5.ebuild,v 1.1 2007/08/30 18:59:47 drac Exp $

inherit gst-plugins-bad

KEYWORDS="~x86"

DEPEND=">=media-libs/ladspa-sdk-1.12-r2
	>=media-libs/gst-plugins-base-0.10.13
	>=media-libs/gstreamer-0.10.13"

RDEPEND="${DEPEND}"
