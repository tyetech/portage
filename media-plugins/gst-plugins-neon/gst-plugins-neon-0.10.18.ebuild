# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-plugins/cvs-repo/gentoo-x86/media-plugins/gst-plugins-neon/Attic/gst-plugins-neon-0.10.18.ebuild,v 1.1 2010/04/05 05:52:11 leio Exp $

inherit autotools gst-plugins-bad

KEYWORDS="~alpha ~amd64 ~ppc ~ppc64 ~x86"
IUSE=""

RDEPEND=">=net-misc/neon-0.26
	>=media-libs/gst-plugins-base-0.10.27"
DEPEND="${RDEPEND}"
