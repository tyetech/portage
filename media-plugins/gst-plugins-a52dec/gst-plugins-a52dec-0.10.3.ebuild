# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-plugins/cvs-repo/gentoo-x86/media-plugins/gst-plugins-a52dec/Attic/gst-plugins-a52dec-0.10.3.ebuild,v 1.10 2006/07/16 12:05:42 dertobi123 Exp $

inherit gst-plugins-ugly

KEYWORDS="alpha ~amd64 hppa ~ia64 ppc ppc64 sparc x86"
IUSE=""

RDEPEND=">=media-libs/a52dec-0.7.3
	>=media-libs/gst-plugins-base-0.10.3
	>=media-libs/gstreamer-0.10.3"

