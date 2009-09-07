# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-plugins/cvs-repo/gentoo-x86/media-plugins/gst-plugins-x264/Attic/gst-plugins-x264-0.10.12.ebuild,v 1.1 2009/09/07 05:09:48 tester Exp $

inherit gst-plugins-ugly

KEYWORDS="~amd64 ~ppc ~ppc64 ~x86"
IUSE=""

RDEPEND=">=media-libs/x264-0.0.20081006
	>=media-libs/gstreamer-0.10.23
	>=media-libs/gst-plugins-base-0.10.23"
DEPEND="${RDEPEND}"
