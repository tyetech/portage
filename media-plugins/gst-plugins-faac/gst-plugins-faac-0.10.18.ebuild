# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-plugins/cvs-repo/gentoo-x86/media-plugins/gst-plugins-faac/Attic/gst-plugins-faac-0.10.18.ebuild,v 1.3 2010/06/27 13:35:56 nixnut Exp $

inherit gst-plugins-bad

KEYWORDS="~alpha amd64 ppc ~ppc64 ~x86"
IUSE=""

RDEPEND="media-libs/faac
	>=media-libs/gst-plugins-base-0.10.27"
DEPEND="${RDEPEND}"
