# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-plugins/cvs-repo/gentoo-x86/media-plugins/gst-plugins-a52dec/Attic/gst-plugins-a52dec-0.10.8.ebuild,v 1.1 2008/06/29 18:53:06 drac Exp $

inherit gst-plugins-ugly

KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~ppc ~ppc64 ~sh ~sparc ~x86 ~x86-fbsd"
IUSE=""

DEPEND=">=media-libs/a52dec-0.7.3
	>=media-libs/gst-plugins-base-0.10.17
	>=media-libs/gstreamer-0.10.17"
