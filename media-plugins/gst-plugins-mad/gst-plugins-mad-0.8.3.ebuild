# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-plugins/cvs-repo/gentoo-x86/media-plugins/gst-plugins-mad/Attic/gst-plugins-mad-0.8.3.ebuild,v 1.2 2004/11/08 20:37:39 vapier Exp $

inherit gst-plugins

KEYWORDS="~alpha ~amd64 ~hppa ~ia64 ~mips ~ppc ~sparc ~x86"
IUSE=""

RDEPEND=">=media-libs/libmad-0.15.0b
	>=media-libs/libid3tag-0.15"
DEPEND="${RDEPEND}
	dev-util/pkgconfig"
