# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-plugins/cvs-repo/gentoo-x86/media-plugins/gst-plugins-vorbis/Attic/gst-plugins-vorbis-0.8.5.ebuild,v 1.7 2004/11/28 03:13:15 josejx Exp $

inherit eutils gst-plugins

KEYWORDS="x86 alpha ~amd64 ~arm ~hppa ~ia64 ~mips ppc sparc"
IUSE=""

RDEPEND=">=media-libs/libvorbis-1"

DEPEND="${RDEPEND}
	>=dev-util/pkgconfig-0.9"
