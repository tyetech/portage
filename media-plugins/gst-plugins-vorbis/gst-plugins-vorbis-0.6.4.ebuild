# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-plugins/cvs-repo/gentoo-x86/media-plugins/gst-plugins-vorbis/Attic/gst-plugins-vorbis-0.6.4.ebuild,v 1.13 2005/02/12 14:25:23 nigoro Exp $

inherit gst-plugins

KEYWORDS="alpha amd64 arm hppa ia64 mips ppc sparc x86"
IUSE=""

RDEPEND="media-libs/libvorbis
	media-libs/libogg"
DEPEND="${RDEPEND}
	>=dev-util/pkgconfig-0.9"
