# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-plugins/cvs-repo/gentoo-x86/media-plugins/gst-plugins-flac/Attic/gst-plugins-flac-0.10.22.ebuild,v 1.8 2010/09/05 17:56:58 klausman Exp $

inherit gst-plugins-good

DESCRIPTION="GStreamer encoder/decoder/tagger for FLAC"
KEYWORDS="alpha amd64 arm hppa ia64 ~ppc ppc64 sh sparc x86 ~x86-fbsd"
IUSE=""

RDEPEND=">=media-libs/flac-1.1.4
	>=media-libs/gst-plugins-base-0.10.29"
DEPEND="${RDEPEND}"
