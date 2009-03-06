# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-plugins/cvs-repo/gentoo-x86/media-plugins/gst-plugins-gio/Attic/gst-plugins-gio-0.10.20.ebuild,v 1.10 2009/03/06 16:04:11 ranger Exp $

inherit gst-plugins-base

KEYWORDS="alpha amd64 ~hppa ~ia64 ppc ppc64 ~sparc ~x86"
IUSE=""

RDEPEND=">=media-libs/gst-plugins-base-0.10.20
	>=dev-libs/glib-2.15.2"
DEPEND="${RDEPEND}
	dev-util/pkgconfig"
