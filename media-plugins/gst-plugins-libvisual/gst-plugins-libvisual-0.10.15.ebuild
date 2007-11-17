# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-plugins/cvs-repo/gentoo-x86/media-plugins/gst-plugins-libvisual/Attic/gst-plugins-libvisual-0.10.15.ebuild,v 1.1 2007/11/17 13:00:19 drac Exp $

inherit gst-plugins-base

KEYWORDS="~amd64 ~ppc ~ppc64 ~sparc ~x86"

IUSE=""
RDEPEND=">=media-libs/gst-plugins-base-0.10.15
	 >=media-libs/libvisual-0.4"

DEPEND="${RDEPEND}"
