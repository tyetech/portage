# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-plugins/cvs-repo/gentoo-x86/media-plugins/gst-plugins-jpeg/Attic/gst-plugins-jpeg-0.8.8.ebuild,v 1.6 2005/08/26 18:11:09 gustavoz Exp $

inherit gst-plugins

DESCRIPTION="plug-in to encode and decode jpeg images"

KEYWORDS="x86 ppc amd64 sparc"
IUSE=""

RDEPEND="media-libs/jpeg"

DEPEND="${RDEPEND}
	>=dev-util/pkgconfig-0.9"
