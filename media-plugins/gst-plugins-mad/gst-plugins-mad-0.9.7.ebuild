# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-plugins/cvs-repo/gentoo-x86/media-plugins/gst-plugins-mad/Attic/gst-plugins-mad-0.9.7.ebuild,v 1.1 2005/12/04 12:36:35 zaheerm Exp $

inherit gst-plugins-ugly

KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=media-libs/libmad-0.15.1b
	>=media-libs/libid3tag-0.15"

DEPEND="${RDEPEND}
	dev-util/pkgconfig"
