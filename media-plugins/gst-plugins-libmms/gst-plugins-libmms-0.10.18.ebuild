# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-plugins/cvs-repo/gentoo-x86/media-plugins/gst-plugins-libmms/Attic/gst-plugins-libmms-0.10.18.ebuild,v 1.5 2010/07/01 12:24:53 fauli Exp $

inherit gst-plugins-bad

KEYWORDS="~alpha amd64 ppc ~ppc64 ~sparc x86"
IUSE=""

RDEPEND=">=media-libs/gst-plugins-base-0.10.27
	>=media-libs/libmms-0.4"
DEPEND="${RDEPEND}"
