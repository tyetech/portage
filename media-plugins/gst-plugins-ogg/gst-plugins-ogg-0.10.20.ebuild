# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-plugins/cvs-repo/gentoo-x86/media-plugins/gst-plugins-ogg/Attic/gst-plugins-ogg-0.10.20.ebuild,v 1.9 2009/04/05 17:53:10 armin76 Exp $

inherit gst-plugins-base

KEYWORDS="alpha amd64 arm hppa ia64 ppc ppc64 sh sparc x86 ~x86-fbsd"
IUSE=""

RDEPEND="media-libs/libogg
	>=media-libs/gst-plugins-base-0.10.20"
DEPEND="${RDEPEND}
	dev-util/pkgconfig"
