# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-plugins/cvs-repo/gentoo-x86/media-plugins/gst-plugins-vorbis/Attic/gst-plugins-vorbis-0.9.7.ebuild,v 1.1 2005/12/02 16:37:00 zaheerm Exp $

inherit eutils gst-plugins-base

KEYWORDS="~x86 ~amd64"
IUSE=""

RDEPEND=">=media-libs/libvorbis-1
	 >=media-libs/libogg-1"

DEPEND="${RDEPEND}
	>=dev-util/pkgconfig-0.9"
