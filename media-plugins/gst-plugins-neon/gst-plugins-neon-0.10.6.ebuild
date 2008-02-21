# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-plugins/cvs-repo/gentoo-x86/media-plugins/gst-plugins-neon/Attic/gst-plugins-neon-0.10.6.ebuild,v 1.1 2008/02/21 14:44:28 zaheerm Exp $

inherit gst-plugins-bad

KEYWORDS="~amd64 ~x86"

RDEPEND=">=net-misc/neon-0.26.4
	>=media-libs/gstreamer-0.10.17
	>=media-libs/gst-plugins-base-0.10.17"
DEPEND="${RDEPEND}
	dev-util/pkgconfig"
