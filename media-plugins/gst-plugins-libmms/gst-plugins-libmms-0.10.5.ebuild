# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-plugins/cvs-repo/gentoo-x86/media-plugins/gst-plugins-libmms/Attic/gst-plugins-libmms-0.10.5.ebuild,v 1.1 2007/08/30 10:05:59 drac Exp $

inherit gst-plugins-bad

KEYWORDS="~amd64 ~x86"

RDEPEND=">=media-libs/gst-plugins-base-0.10.13
	>=media-libs/gstreamer-0.10.13
	>=media-libs/libmms-0.3"

DEPEND="${RDEPEND}"
