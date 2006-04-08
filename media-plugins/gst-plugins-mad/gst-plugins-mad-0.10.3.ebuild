# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-plugins/cvs-repo/gentoo-x86/media-plugins/gst-plugins-mad/Attic/gst-plugins-mad-0.10.3.ebuild,v 1.2 2006/04/08 12:06:17 dertobi123 Exp $

inherit gst-plugins-ugly

KEYWORDS="~amd64 ~ppc ~ppc64 ~sparc ~x86"
IUSE=""

RDEPEND=">=media-libs/gst-plugins-base-0.10.3
	>=media-libs/gstreamer-0.10.3
	>=media-libs/libmad-0.15.1b
	>=media-libs/libid3tag-0.15"

DEPEND="${RDEPEND}
	dev-util/pkgconfig"
