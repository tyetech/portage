# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-plugins/cvs-repo/gentoo-x86/media-plugins/gst-plugins-xvideo/Attic/gst-plugins-xvideo-0.8.2.ebuild,v 1.4 2004/09/02 18:07:24 pvdabeel Exp $

inherit gst-plugins

KEYWORDS="x86 ppc amd64"

IUSE=""
DEPEND="virtual/x11"

# xshm is a compile time option of xvideo
GST_PLUGINS_BUILD="x xvideo xshm"
GST_PLUGINS_BUILD_DIR="xvimage"
