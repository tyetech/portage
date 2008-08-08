# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-plugins/cvs-repo/gentoo-x86/media-plugins/gst-plugins-vorbis/Attic/gst-plugins-vorbis-0.10.20.ebuild,v 1.6 2008/08/08 19:18:34 maekke Exp $

inherit gst-plugins-base

KEYWORDS="~alpha amd64 ~arm ~hppa ia64 ppc ppc64 ~sh sparc x86 ~x86-fbsd"
IUSE=""

RDEPEND=">=media-libs/gst-plugins-base-0.10.20
	media-libs/libvorbis
	media-libs/libogg"
DEPEND="${RDEPEND}
	dev-util/pkgconfig"
