# Copyright 1999-2004 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-plugins/cvs-repo/gentoo-x86/media-plugins/gst-plugins-colorspace/Attic/gst-plugins-colorspace-0.6.4.ebuild,v 1.5 2004/01/18 15:07:35 gustavoz Exp $

inherit gst-plugins

KEYWORDS="x86 ~ppc sparc"

IUSE=""
DEPEND="media-libs/hermes"

BUILD_GST_PLUGINS="hermes"
GST_PLUGINS_BUILD_DIR="hermes"
