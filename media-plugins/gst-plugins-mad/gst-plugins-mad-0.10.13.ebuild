# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-plugins/cvs-repo/gentoo-x86/media-plugins/gst-plugins-mad/Attic/gst-plugins-mad-0.10.13.ebuild,v 1.7 2010/06/24 16:57:57 jer Exp $

inherit gst-plugins-ugly

KEYWORDS="alpha amd64 arm hppa ia64 ppc ~ppc64 sh sparc x86 ~x86-fbsd ~x86-freebsd ~x86-interix ~amd64-linux ~x86-linux"
IUSE=""

RDEPEND=">=media-libs/gst-plugins-base-0.10.25
	>=media-libs/gstreamer-0.10.25
	>=media-libs/libmad-0.15.1b
	>=media-libs/libid3tag-0.15"
DEPEND="${RDEPEND}"
