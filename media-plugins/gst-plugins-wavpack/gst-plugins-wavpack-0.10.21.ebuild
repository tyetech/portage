# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-plugins/cvs-repo/gentoo-x86/media-plugins/gst-plugins-wavpack/Attic/gst-plugins-wavpack-0.10.21.ebuild,v 1.4 2010/08/01 20:29:30 klausman Exp $

inherit gst-plugins-good

KEYWORDS="alpha amd64 ~ppc ~ppc64 x86"
IUSE=""

RDEPEND=">=media-libs/gst-plugins-base-0.10.27
	>=media-libs/gstreamer-0.10.27
	>=media-sound/wavpack-4.40"
DEPEND="${RDEPEND}"
