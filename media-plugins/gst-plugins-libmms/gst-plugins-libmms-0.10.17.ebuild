# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-plugins/cvs-repo/gentoo-x86/media-plugins/gst-plugins-libmms/Attic/gst-plugins-libmms-0.10.17.ebuild,v 1.4 2010/04/05 18:39:30 armin76 Exp $

inherit gst-plugins-bad

KEYWORDS="alpha amd64 ~ppc ~ppc64 sparc x86"
IUSE=""

RDEPEND=">=media-libs/gst-plugins-base-0.10.25
	>=media-libs/gstreamer-0.10.25
	>=media-libs/libmms-0.4"
DEPEND="${RDEPEND}
	dev-util/pkgconfig"
