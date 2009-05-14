# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-plugins/cvs-repo/gentoo-x86/media-plugins/gst-plugins-lame/Attic/gst-plugins-lame-0.10.11.ebuild,v 1.4 2009/05/14 19:56:42 maekke Exp $

inherit gst-plugins-ugly

KEYWORDS="alpha amd64 ~ppc ~ppc64 ~sparc x86"
IUSE=""

RDEPEND=">=media-sound/lame-3.95
	>=media-libs/gstreamer-0.10.22
	>=media-libs/gst-plugins-base-0.10.22"
DEPEND="${RDEPEND}
	dev-util/pkgconfig"
