# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-plugins/cvs-repo/gentoo-x86/media-plugins/gst-plugins-musepack/Attic/gst-plugins-musepack-0.10.6.ebuild,v 1.1 2008/02/21 14:23:45 zaheerm Exp $

inherit gst-plugins-bad

KEYWORDS="~alpha ~amd64 ~ppc ~ppc64 ~sparc ~x86"

RDEPEND=">=media-libs/gst-plugins-base-0.10.17
	>=media-libs/gstreamer-0.10.17
	>=media-libs/libmpcdec-1.2"

DEPEND="${RDEPEND}"
