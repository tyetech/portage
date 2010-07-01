# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-plugins/cvs-repo/gentoo-x86/media-plugins/gst-plugins-musepack/Attic/gst-plugins-musepack-0.10.18.ebuild,v 1.4 2010/07/01 12:29:09 fauli Exp $

inherit gst-plugins-bad

KEYWORDS="~alpha amd64 ppc ~ppc64 x86 ~x86-interix ~amd64-linux ~x86-linux"
IUSE=""

RDEPEND=">=media-libs/gst-plugins-base-0.10.27
	>=media-sound/musepack-tools-444"
DEPEND="${RDEPEND}"
