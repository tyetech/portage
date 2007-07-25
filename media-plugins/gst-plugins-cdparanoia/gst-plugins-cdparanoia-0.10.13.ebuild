# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-plugins/cvs-repo/gentoo-x86/media-plugins/gst-plugins-cdparanoia/Attic/gst-plugins-cdparanoia-0.10.13.ebuild,v 1.1 2007/07/25 15:45:58 zaheerm Exp $

inherit gst-plugins-base

KEYWORDS="~alpha ~amd64 ~hppa ~ia64 ~ppc ~ppc64 ~sparc ~x86 ~x86-fbsd"
IUSE=""

RDEPEND="media-sound/cdparanoia
	>=media-libs/gst-plugins-base-0.10.13"

DEPEND="${RDEPEND}"

src_unpack() {
	unpack ${A}
}

src_compile() {
	gst-plugins-base_src_configure
	# We need to build the entire set of plugins as well to
	# satisfy the build
	emake || die "build failed"
}
