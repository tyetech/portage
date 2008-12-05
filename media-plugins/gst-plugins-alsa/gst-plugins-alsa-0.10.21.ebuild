# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-plugins/cvs-repo/gentoo-x86/media-plugins/gst-plugins-alsa/Attic/gst-plugins-alsa-0.10.21.ebuild,v 1.1 2008/12/05 19:54:20 ssuominen Exp $

inherit gst-plugins-base

KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~ppc ~ppc64 ~sh ~sparc ~x86"
IUSE=""

RDEPEND=">=media-libs/gst-plugins-base-0.10.21
	media-libs/alsa-lib"
DEPEND="${RDEPEND}
	dev-util/pkgconfig"
