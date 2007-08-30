# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-plugins/cvs-repo/gentoo-x86/media-plugins/gst-plugins-cdio/Attic/gst-plugins-cdio-0.10.6.ebuild,v 1.1 2007/08/30 20:02:46 drac Exp $

inherit gst-plugins-good

KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-libs/libcdio-0.71
	>=media-libs/gst-plugins-base-0.10.13
	>=media-libs/gstreamer-0.10.13"

DEPEND="${RDEPEND}"
