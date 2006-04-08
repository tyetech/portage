# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-plugins/cvs-repo/gentoo-x86/media-plugins/gst-plugins-jpeg/Attic/gst-plugins-jpeg-0.10.2.ebuild,v 1.3 2006/04/08 12:34:14 dertobi123 Exp $

inherit gst-plugins-good

DESCRIPTION="plug-in to encode and decode jpeg images"

KEYWORDS="~amd64 ~ppc ~ppc64 ~x86"
IUSE=""

RDEPEND="media-libs/jpeg"

DEPEND="${RDEPEND}
	>=dev-util/pkgconfig-0.9"
