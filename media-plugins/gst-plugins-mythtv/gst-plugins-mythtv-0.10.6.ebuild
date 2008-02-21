# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-plugins/cvs-repo/gentoo-x86/media-plugins/gst-plugins-mythtv/Attic/gst-plugins-mythtv-0.10.6.ebuild,v 1.1 2008/02/21 17:38:55 zaheerm Exp $

inherit gst-plugins-bad

DESCRIPION="plugin to allow retrieving from a mythbackend"

KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="media-libs/gmyth"
DEPEND="${RDEPEND}
	>=dev-util/pkgconfig-0.9"
