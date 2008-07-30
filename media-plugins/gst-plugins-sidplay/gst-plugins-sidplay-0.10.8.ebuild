# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-plugins/cvs-repo/gentoo-x86/media-plugins/gst-plugins-sidplay/Attic/gst-plugins-sidplay-0.10.8.ebuild,v 1.3 2008/07/30 13:59:33 ranger Exp $

inherit gst-plugins-ugly

KEYWORDS="amd64 ppc ~ppc64 ~sparc ~x86"
IUSE=""

DEPEND="=media-libs/libsidplay-1.3*
	 >=media-libs/gstreamer-0.10.17
	 >=media-libs/gst-plugins-base-0.10.17"
