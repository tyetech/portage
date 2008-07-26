# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-plugins/cvs-repo/gentoo-x86/media-plugins/gst-plugins-dvb/Attic/gst-plugins-dvb-0.10.7.ebuild,v 1.2 2008/07/26 20:30:09 tester Exp $

inherit gst-plugins-bad

DESCRIPION="plugin to allow capture from dvb devices"

KEYWORDS="amd64 ~x86"
IUSE=""

RDEPEND=">=media-libs/gst-plugins-base-0.10.19"
DEPEND="${RDEPEND}
	virtual/os-headers
	dev-util/pkgconfig"
