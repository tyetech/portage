# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-plugins/cvs-repo/gentoo-x86/media-plugins/gst-plugins-alsa/Attic/gst-plugins-alsa-0.10.4.ebuild,v 1.8 2006/04/13 13:11:04 tcort Exp $

inherit eutils gst-plugins-base

KEYWORDS="~alpha amd64 ~ia64 ~ppc ~ppc64 ~sparc ~x86"
IUSE=""

RDEPEND=">=media-libs/alsa-lib-1.0.7
	 >=media-libs/gst-plugins-base-0.10.4"
