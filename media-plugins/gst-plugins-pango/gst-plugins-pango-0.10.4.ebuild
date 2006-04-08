# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-plugins/cvs-repo/gentoo-x86/media-plugins/gst-plugins-pango/Attic/gst-plugins-pango-0.10.4.ebuild,v 1.6 2006/04/08 12:36:45 dertobi123 Exp $

inherit gst-plugins-base

KEYWORDS="amd64 ~ppc ~ppc64 ~sparc ~x86"

IUSE=""
RDEPEND="x11-libs/pango
		 >=media-libs/gst-plugins-base-0.10.4"
DEPEND="${RDEPEND}"
