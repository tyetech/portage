# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-plugins/cvs-repo/gentoo-x86/media-plugins/gst-plugins-mad/Attic/gst-plugins-mad-0.8.1.ebuild,v 1.7 2004/06/24 23:30:35 agriffis Exp $

inherit gst-plugins

KEYWORDS="x86 ppc ~sparc ~alpha hppa amd64 ~ia64 mips"

IUSE=""

RDEPEND=">=media-libs/libmad-0.15
	>=media-libs/libid3tag-0.15"

DEPEND="${RDEPEND}
	dev-util/pkgconfig"
