# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-plugins/cvs-repo/gentoo-x86/media-plugins/gst-plugins-mpeg2dec/Attic/gst-plugins-mpeg2dec-0.10.3.ebuild,v 1.7 2006/07/14 17:21:49 dertobi123 Exp $

inherit gst-plugins-ugly

DESCRIPTION="Libmpeg2 based decoder plug-in for gstreamer"

KEYWORDS="~alpha ~amd64 ~hppa ppc ppc64 x86"
IUSE=""

RDEPEND=">=media-libs/gst-plugins-base-0.10.3
	>=media-libs/gstreamer-0.10.3
	>=media-libs/libmpeg2-0.4"

DEPEND="${RDEPEND}"
