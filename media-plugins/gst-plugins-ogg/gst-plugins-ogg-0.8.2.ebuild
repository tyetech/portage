# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-plugins/cvs-repo/gentoo-x86/media-plugins/gst-plugins-ogg/Attic/gst-plugins-ogg-0.8.2.ebuild,v 1.5 2004/08/12 22:33:55 lv Exp $

inherit gst-plugins

KEYWORDS="x86 ~ppc sparc amd64 hppa ~alpha ~ia64 ~mips"

IUSE=""
RDEPEND=">=media-libs/libogg-1"

DEPEND="${RDEPEND}
	>=dev-util/pkgconfig-0.9"

