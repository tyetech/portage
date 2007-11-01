# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-plugins/cvs-repo/gentoo-x86/media-plugins/gst-plugins-esd/Attic/gst-plugins-esd-0.10.6.ebuild,v 1.8 2007/11/01 13:59:07 armin76 Exp $

inherit gst-plugins-good

KEYWORDS="alpha amd64 ~arm hppa ia64 ppc ppc64 ~sh sparc x86 ~x86-fbsd"
IUSE=""

RDEPEND=">=media-sound/esound-0.2.8
	>=media-libs/gstreamer-0.10.13
	>=media-libs/gst-plugins-base-0.10.13"
DEPEND="${RDEPEND}"
