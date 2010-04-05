# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-plugins/cvs-repo/gentoo-x86/media-plugins/gst-plugins-sidplay/Attic/gst-plugins-sidplay-0.10.13.ebuild,v 1.4 2010/04/05 18:38:02 armin76 Exp $

inherit gst-plugins-ugly

KEYWORDS="alpha amd64 ~ppc ~ppc64 sparc x86"
IUSE=""

RDEPEND="=media-libs/libsidplay-1.3*
	 >=media-libs/gstreamer-0.10.25
	 >=media-libs/gst-plugins-base-0.10.25"
DEPEND="${RDEPEND}"
