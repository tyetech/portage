# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-plugins/cvs-repo/gentoo-x86/media-plugins/gst-plugins-v4l/Attic/gst-plugins-v4l-0.8.11.ebuild,v 1.3 2006/01/23 14:32:28 wolf31o2 Exp $

inherit gst-plugins

DESCRIPION="plugin to allow capture from video4linux1 devices"

KEYWORDS="amd64 ~ppc x86"

IUSE=""

RDEPEND="virtual/x11"

DEPEND="${RDEPEND}
	virtual/os-headers
	>=dev-util/pkgconfig-0.9"

