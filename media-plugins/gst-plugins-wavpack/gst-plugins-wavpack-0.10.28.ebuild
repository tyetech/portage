# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-plugins/cvs-repo/gentoo-x86/media-plugins/gst-plugins-wavpack/gst-plugins-wavpack-0.10.28.ebuild,v 1.6 2011/09/25 17:49:49 armin76 Exp $

inherit gst-plugins-good

KEYWORDS="alpha amd64 hppa ppc ppc64 x86"
IUSE=""

RDEPEND=">=media-libs/gst-plugins-base-0.10.32
	>=media-sound/wavpack-4.40"
DEPEND="${RDEPEND}"
