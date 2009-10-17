# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-plugins/cvs-repo/gentoo-x86/media-plugins/gst-plugins-musepack/Attic/gst-plugins-musepack-0.10.11.ebuild,v 1.9 2009/10/17 10:10:29 ssuominen Exp $

inherit gst-plugins-bad

KEYWORDS="alpha amd64 ppc ppc64 x86"
IUSE=""

RDEPEND=">=media-libs/gst-plugins-base-0.10.22
	>=media-libs/gstreamer-0.10.22
	>=media-sound/musepack-tools-444"
DEPEND="${RDEPEND}
	dev-util/pkgconfig"
