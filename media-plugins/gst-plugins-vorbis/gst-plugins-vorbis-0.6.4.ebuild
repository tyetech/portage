# Copyright 1999-2004 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-plugins/cvs-repo/gentoo-x86/media-plugins/gst-plugins-vorbis/Attic/gst-plugins-vorbis-0.6.4.ebuild,v 1.9 2004/04/28 21:37:04 jhuebel Exp $

inherit gst-plugins

KEYWORDS="x86 ppc alpha sparc hppa amd64 ia64 ~mips"

IUSE=""
RDEPEND="media-libs/libvorbis
	media-libs/libogg"

DEPEND="${RDEPEND}
	>=dev-util/pkgconfig-0.9"

