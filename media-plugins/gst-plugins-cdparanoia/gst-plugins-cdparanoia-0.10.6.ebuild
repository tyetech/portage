# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-plugins/cvs-repo/gentoo-x86/media-plugins/gst-plugins-cdparanoia/Attic/gst-plugins-cdparanoia-0.10.6.ebuild,v 1.1 2006/05/16 08:58:28 zaheerm Exp $

inherit gst-plugins-base

KEYWORDS="~amd64 ~ia64 ~ppc ~ppc64 ~sparc ~x86"
IUSE=""

RDEPEND="media-sound/cdparanoia
		 >=media-libs/gst-plugins-base-0.10.4"

DEPEND="${RDEPEND}"
