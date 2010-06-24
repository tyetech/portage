# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-plugins/cvs-repo/gentoo-x86/media-plugins/gst-plugins-vorbis/Attic/gst-plugins-vorbis-0.10.28.ebuild,v 1.2 2010/06/24 10:22:43 hwoarang Exp $

inherit gst-plugins-base

KEYWORDS="~alpha amd64 ~arm ~hppa ~ia64 ~ppc ~ppc64 ~sh ~sparc ~x86 ~x86-fbsd"
IUSE=""

RDEPEND=">=media-libs/libvorbis-1.0
	>=media-libs/libogg-1.0"
DEPEND="${RDEPEND}"
