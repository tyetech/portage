# Copyright 1999-2004 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-plugins/cvs-repo/gentoo-x86/media-plugins/gst-plugins-ogg/Attic/gst-plugins-ogg-0.8.0.ebuild,v 1.4 2004/03/31 00:38:03 lv Exp $

inherit gst-plugins

KEYWORDS="~x86 ~ppc ~sparc ~amd64"

IUSE=""
RDEPEND=">=media-libs/libogg-1"

DEPEND="${RDEPEND}
	>=dev-util/pkgconfig-0.9"

