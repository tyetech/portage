# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-plugins/cvs-repo/gentoo-x86/media-plugins/gst-plugins-dvb/Attic/gst-plugins-dvb-0.10.6.ebuild,v 1.1 2008/02/21 16:40:24 zaheerm Exp $

inherit gst-plugins-bad

DESCRIPION="plugin to allow capture from dvb devices"

KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}
	virtual/os-headers
	>=dev-util/pkgconfig-0.9"
