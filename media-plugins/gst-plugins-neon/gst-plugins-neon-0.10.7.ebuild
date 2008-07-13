# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-plugins/cvs-repo/gentoo-x86/media-plugins/gst-plugins-neon/Attic/gst-plugins-neon-0.10.7.ebuild,v 1.2 2008/07/13 07:22:21 josejx Exp $

inherit gst-plugins-bad

KEYWORDS="~amd64 ~ppc ~x86"
IUSE=""

RDEPEND=">=net-misc/neon-0.26
	>=media-libs/gstreamer-0.10.19
	>=media-libs/gst-plugins-base-0.10.19"
DEPEND="${RDEPEND}
	dev-util/pkgconfig"
